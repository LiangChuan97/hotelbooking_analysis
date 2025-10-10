### Hotel Booking Dataset Analysis ###
***
A critical challenge for online travel agencies (OTAs) is balancing high booking volumes with low cancellation rates, since cancellations reduce revenue predictability, disrupt hotel partners’ inventory planning, and weaken customer experience.
By addressing these problems, OTAs can improve partner trust, reduce overbooking or underutilization of hotel inventory, and enhance marketing ROI by targeting customers less likely to cancel.<p>Goal 1: Analyze historical booking data to pinpoint hotels and time periods with the highest cancellation rates and quantify the potential revenue lost from these cancellations to inform operational and strategic decisions.<p>
Goal 2: Identify customer segments that pose higher revenue risk and recommend targeted pricing, deposit policies, or incentives to mitigate losses.<p>
Goal 3: Evaluate performance of channels, market segments, and countries across ADR, booking volume, and cancellation rates.<p>
Goal 4: Analyze repeat-guest behavior and historical booking patterns to determine the impact of past cancellations on future bookings and develop strategies for loyalty programs or retention campaigns to reduce cancellations and increase customer lifetime value.

***
**Problems:** 
1. Identify which hotels and the dates that produce the highest cancellation rate and estimate revenue lost.<p>
2. Find where ADR (average daily rate) is low vs. cancellation and which deposit/customer types inflict revenue risk so pricing/policies can be optimised.<p>
3. Determine which distribution channels, market segments and countries give the best combination of ADR, booking volume and low cancellation so marketing spend can be reallocated.<p>
4. Measure repeat-guest performance, quantify how previous cancellation and non-cancellation affect current cancellations and design loyalty/retention actions.<br>

***
**Methodology:** Data was sourced from <a href = "https://www.kaggle.com/datasets/jessemostipak/hotel-booking-demand?resource=download">kaggle </a>, cleaned and transformed using SQL. Exploratory data analysis was performed to identify trends and correlations. An interactive dashboard was then developed in tableau to present key findings.
***
**Key Findings and Recommendations:** <p>
<img width="656" height="865" alt="image" src="https://github.com/user-attachments/assets/21b41eab-e712-4d84-9ad3-42000758ce2b" />




1) City Hotels had extremely high cancellations of 53.26% to 70.76% in summer months (July–August 2015).<p>
2) Resort Hotels show high cancellations of 37.54% to 38.38% in mid-year 2017 (June–August).<p>
3) Revenue lost aligns with high cancellations, but some months with moderate cancellation rates still have significant revenue loss (high total_potential_revenue).<p>

o	Target high-risk months and hotels:<p>
•	For City Hotels, summer months (July–August) need prepayment policies or cancellation fees.<p>
•	For Resort Hotels, monitor June–August; consider flexible rescheduling instead of full refund.<p>

o	Dynamic deposit / cancellation policies:<p>
• Apply higher deposits for high-risk months.<p>
•	Offer non-refundable discounts to stabilize revenue.<p>

o	Customer communication & reminders:<p>
•	Send reminder emails 7–14 days before arrival to reduce last-minute cancellations.<p>
•	Introduce loyalty incentives for guests who don’t cancel.<p>

o	Revenue protection:<p>
•	Focus on months with moderate cancellation rate but high revenue potential for promotional campaigns.<p>



<img width="656" height="865" alt="image" src="https://github.com/user-attachments/assets/ea89043f-f72e-4247-b333-e05216ee0fba" />


4) Biggest dollar leakage is from No Deposit / Transient bookings for both hotel types which account for the largest share of revenue lost (≈ 6.3M + 4.7M).<p>
5) Some Non-Refund segments show 100% cancellation and sizable money lost (City Hotel Non Refund Transient ≈ 3.04M lost). This is counter-intuitive (non-refundable should reduce cancellations) — likely a data / business-process mismatch or special-case behavior (e.g., forced cancellations by property/OTA).<p>
6) Transient-Party and Contract segments also contribute meaningfully in volume and lost rev, but at lower cancellation% (often 10–33%). Contract shows lower ADR in some rows but moderate lost revenue.<p>

o	Target the No-Deposit → Transient segment first (highest money at risk):<p>
•	Offer a small, time-limited prepayment discount to convert “no deposit” guests to paid reservations.<p>
•	Introduce an opt-in non-refundable rate with lower price but locked-in revenue.<p>

o Require deposit guarantees or minimum commitment levels (e.g., at least 80% of rooms booked must be paid even if partially canceled).<p>
o Offer a credit on future stays instead of full refunds, reducing immediate revenue loss.<p>



<img width="656" height="812" alt="image" src="https://github.com/user-attachments/assets/b90f2919-8501-46b1-996c-0684e3f5e44f" />

7) The TA/TO Aviation channel consistently shows high booking volumes (e.g., PRT: 25,214 bookings; GBR: 4,727 bookings) with moderate to high ADR (~98–117) and manageable cancellation rates (~26–33%).<p>
8) Aviation and Direct segments in major markets (GBR, ESP, ITA) maintain strong ADR with relatively low cancellations (ADR 106–117, cancellation 16–27%).<p>
9) Countries like GBR, ESP, ITA, DEU provide the best balance of high ADR, high booking volume, and moderate-to-low cancellation rates, making them ideal for targeted marketing.<p>

o	Reallocate Marketing Spend to Efficient Channels:<p>
•	Focus more on TA/TO Aviation and Direct channels in GBR, ESP, ITA, and DEU, as they provide strong ADR and booking volume with manageable cancellations.<p>

o	Optimize Segment-targeted Strategies:<p>
•	Prioritize Aviation and Direct segments for promotions, upselling, and loyalty programs.<p>

o	Country-specific Marketing Focus:<p>
•	Invest in high-potential countries with good ADR-to-volume ratio and low-to-moderate cancellations (GBR, ESP, ITA, DEU).<p>

<img width="656" height="857" alt="image" src="https://github.com/user-attachments/assets/d2f8a938-fc44-4940-a2cf-1df66623d0b8" /><p>
10) Repeat guests cancel 14.69%, new guests cancel 38.04%.<p>
11) 114,323 of 117,992 bookings are new guests (~97%).<p>

o	Prioritize retention programs for repeat guests (loyalty points, exclusive offers).<p>
o	Introduce prepayment, non-refundable options, or small deposits for new guests to reduce cancellation risk.<p>
o	Consider welcome offers tied to repeat behavior (discount on second booking) to convert more new guests into repeat guests.<p>

<img width="656" height="385" alt="image" src="https://github.com/user-attachments/assets/0ed50b9c-e451-410a-9897-fa5ccaee2307" />

12) 91.79% cancellation rate for guests with previous cancellations vs 34.20% for guests with no previous cancellations.<p>
13) ADR of 105.09 for no previous cancellers vs 77.84 for previous cancellers.<p>

o	Introduce prepayment or non-refundable rate plans for guests with a history of cancellations.
o	Consider a “loyalty conversion” program: reward them only after their next confirmed booking to encourage commitment.<p>
o	Focus retention and loyalty programs on these guests: e.g., early-access deals, special offers, loyalty points.<p>
o	Upsell premium packages, room upgrades, or add-ons to maximize revenue from this low-risk segment.<p>







***

**Conclusion:** <p> The analysis of hotel bookings reveals that profitability and booking efficiency vary significantly across distribution channels, market segments, and countries. Direct and Corporate channels consistently deliver higher average daily rates (ADR) with lower cancellation rates, making them the most reliable for revenue. TA/TO channels, particularly Aviation and Online TA, drive the highest booking volumes but carry moderate cancellation risks, highlighting opportunities to optimize campaigns and reduce revenue leakage. Group bookings and Offline TA/TO channels generally underperform in ADR and exhibit higher cancellations, indicating areas where marketing and operational strategies can be improved.<p>



