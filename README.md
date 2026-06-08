

**Author:** Kashish
**Project Type:** Exploratory Data Analysis (EDA)

##  Project Overview
This analysis dives into the operational inefficiencies of Uber rides, specifically examining the route between the City and the Airport. The goal is to uncover why a large percentage of ride requests remain unfulfilled and to propose data-backed strategies to bridge this gap.

##  Core Business Problem
The dataset reveals a staggering **72% unfulfilled request rate** on the City-Airport route. This translates to massive revenue loss and a poor customer experience, primarily driven by:
* High rate of driver **Cancellations**.
* Severe **"No Cars Available"** situations at critical hours.

##  Key Findings from EDA
1.  **The Morning Bottleneck (5 AM - 9 AM):** * **Trend:** High volume of requests from City to Airport.
    * **Issue:** Drivers actively cancel these trips fearing "dead mileage" on the return journey.
2.  **The Evening Bottleneck (5 PM - 9 PM):** * **Trend:** High volume of incoming flights leading to massive requests from Airport to City.
    * **Issue:** A severe shortage of cabs physically present at the airport (No Cars Available).

##  Strategic Recommendations
To mitigate these operational gaps, the following interventions are suggested:
* **Morning Peak:** Introduce targeted financial incentives or higher commissions for city-to-airport drops to compensate for potential empty return trips.
* **Evening Peak:** Implement dynamic "Rush Hour" pricing for trips originating from the airport to attract available city drivers.
* **Algorithmic Shift:** Prioritize drivers completing airport drops for immediate return pickups.

##  Repository Contents
* `Uber_EDA_Kashish.ipynb`: The main Jupyter Notebook containing data wrangling, python code, and all visualizations.
* `Uber_Insights_Presentation.pdf`: A concise pitch deck summarizing the problem and proposed solutions.

## Dashboard Preview
<img width="1337" height="678" alt="image" src="https://github.com/user-attachments/assets/481535d8-ca14-4c49-828c-530102e12b65" />


---
*Built with Python, Pandas, Matplotlib & Seaborn.*
