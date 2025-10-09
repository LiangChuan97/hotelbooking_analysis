-- Overall cancellation & revenue lost by hotel / year / month-- 
WITH booking_metrics AS (
  SELECT
    hotel,
    EXTRACT(YEAR FROM STR_TO_DATE(arrival_date, '%d/%m/%Y')) AS yr,
    EXTRACT(MONTH FROM STR_TO_DATE(arrival_date, '%d/%m/%Y')) AS month,
    (stays_in_weekend_nights + stays_in_week_nights) AS total_nights,
    adr,
    is_canceled
  FROM hotel_bookings_dataset
)
SELECT
  hotel,
  yr,
  month,
  COUNT(*) AS bookings,
  SUM(CASE WHEN is_canceled = 1 THEN 1 ELSE 0 END) AS cancellations,
  ROUND(100.0 * SUM(CASE WHEN is_canceled = 1 THEN 1 ELSE 0 END) / NULLIF(COUNT(*),0), 2) AS cancellation_rate_pct,
  ROUND(AVG(adr),2) AS avg_adr,
  ROUND(SUM(total_nights * adr),2) AS total_potential_revenue,
  ROUND(SUM(CASE WHEN is_canceled = 1 THEN total_nights * adr ELSE 0 END),2) AS revenue_lost_to_cancellations
FROM booking_metrics
GROUP BY hotel, yr, month
ORDER BY cancellation_rate_pct DESC, bookings DESC;

-- ADR, revenue, and revenue lost by deposit_type & customer_type-- 

WITH br AS (
  SELECT
    hotel,
    deposit_type,
    customer_type,
    (stays_in_weekend_nights + stays_in_week_nights) AS total_nights,
    adr,
    is_canceled 
  FROM hotel_bookings_dataset
)
SELECT
  hotel,
  deposit_type,
  customer_type,
  COUNT(*) AS bookings,
  ROUND(AVG(adr),2) AS avg_adr,
  ROUND(SUM(total_nights * adr),2) AS total_potential_revenue,
  ROUND(SUM(CASE WHEN is_canceled = 1 THEN total_nights * adr ELSE 0 END),2) AS revenue_lost_to_cancellations,
  ROUND(100.0 * SUM(CASE WHEN is_canceled = 1 THEN 1 ELSE 0 END) / NULLIF(COUNT(*),0),2) AS cancellation_rate_pct
FROM br
GROUP BY hotel, deposit_type, customer_type
ORDER BY total_potential_revenue DESC;

-- channel × market_segment × country performance (bookings, cancellation rate, avg ADR, avg lead_time)-- 

SELECT
  distribution_channel,
  market_segment,
  country,
  COUNT(*) AS bookings,
  SUM(CASE WHEN is_canceled = 1 THEN 1 ELSE 0 END) AS cancellations,
  ROUND(100.0 * SUM(CASE WHEN is_canceled = 1 THEN 1 ELSE 0 END) / NULLIF(COUNT(*),0),2) AS cancellation_rate_pct,
  ROUND(AVG(adr),2) AS avg_adr,
  ROUND(AVG(lead_time),1) AS avg_lead_time
FROM hotel_bookings_dataset
GROUP BY distribution_channel, market_segment, country
HAVING COUNT(*) > 50  -- filter out low-volume markets
ORDER BY avg_adr DESC, cancellation_rate_pct ASC, bookings DESC;

-- repeated guests, effect of previous_cancellations--

-- Repeat guest performance
SELECT
  is_repeated_guest,
  COUNT(*) AS bookings,
  SUM(CASE WHEN is_canceled = 1 THEN 1 ELSE 0 END) AS cancellations,
  ROUND(100.0 * SUM(CASE WHEN is_canceled = 1 THEN 1 ELSE 0 END) / NULLIF(COUNT(*),0),2) AS cancellation_rate_pct,
  ROUND(AVG(adr),2) AS avg_adr,
  ROUND(AVG(total_of_special_requests),2) AS avg_special_requests
FROM (
  SELECT
    is_repeated_guest,
    is_canceled,
    adr,
    total_of_special_requests
  FROM hotel_bookings_dataset
) t
GROUP BY is_repeated_guest
ORDER BY is_repeated_guest DESC;

-- Impact of historical behaviour on current cancellations
SELECT
  CASE WHEN previous_cancellations > 0 THEN 'prev_cancelled' ELSE 'no_prev_cancel' END AS prev_cancel_flag,
  COUNT(*) AS bookings,
  ROUND(100.0 * SUM(CASE WHEN is_canceled = 1 THEN 1 ELSE 0 END) / NULLIF(COUNT(*),0),2) AS cancellation_rate_pct,
  ROUND(AVG(adr),2) AS avg_adr
FROM hotel_bookings_dataset
GROUP BY prev_cancel_flag
ORDER BY cancellation_rate_pct DESC;