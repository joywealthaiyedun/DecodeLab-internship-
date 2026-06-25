# Data Cleaning & Preparation Report

## Project Overview

The objective of this project was to assess, clean, and prepare an e-commerce dataset for analysis by identifying and addressing data quality issues such as missing values, duplicates, incorrect formats, and calculation inconsistencies.


## Dataset Information

 Metric               Value 
 Total Records        1,200 
 Total Columns        14    
 Missing Values       309   
 Duplicate Rows       0     
 Duplicate Order IDs  0     

Columns analyzed:

* OrderID
* Date
* CustomerID
* Product
* Quantity
* UnitPrice
* ShippingAddress
* PaymentMethod
* OrderStatus
* TrackingNumber
* ItemsInCart
* CouponCode
* ReferralSource
* TotalPrice


## Data Cleaning Process

### 1. Missing Value Analysis

A complete audit was performed to identify null values across all columns.

### Findings

 Column             Missing Values 

 CouponCode                    309 
 All Other Columns               0 
### Action Taken

The missing values were found only in the CouponCode field.These missing values were replaced with "Unknown"

For analytical purposes, missing CouponCode values were categorized as:

```text
UNKNOWN
```


### 2. Duplicate Record Check

The dataset was examined for duplicated transactions.

#### Checks Performed

* Full row duplicate check
* Duplicate OrderID validation

#### Findings

No duplicates was found

#### Action Taken

No duplicate records were identified. Therefore, no rows were removed.


### 3. Data Type Validation

Data types were reviewed to ensure consistency and suitability for analysis.

All column has valid data type

#### Action Taken

No datatype corrections were required.


### 4. Business Rule Validation

The TotalPrice field was validated using the business rule:

TotalPrice = Quantity × UnitPrice

#### Findings

All records satisfied the expected calculation rule.

#### Action Taken

No corrections were required.


### 5. Outlier and Range Validation

The dataset was checked for unusual values.

### Quantity

* Minimum: 1
* Maximum: 5

### UnitPrice

* Minimum: $11.39
* Maximum: $699.93

### ItemsInCart

* Minimum: 1
* Maximum: 10

### Findings

No invalid or extreme outliers requiring removal were detected.


## Data Quality Challenges Encountered

### Missing Coupon Codes

The primary challenge encountered was the presence of missing CouponCode values.

Instead of deleting these records, business context was considered. Customers may legitimately place orders without applying promotional codes. Removing such records would have reduced data completeness and potentially biased the analysis.

### Verification of Revenue Calculations

The TotalPrice field required validation to ensure that revenue metrics would be accurate for later analysis. All calculations were verified successfully.


## Final Data Quality Assessment

 Check                       Status     
 Missing Values              Resolved   
 Duplicate Records           None Found 
 Duplicate Order IDs         None Found 
 Invalid Data Types          None Found 
 Incorrect Calculations      None Found 



## Conclusion

The dataset was successfully cleaned and validated for analysis. Data quality was generally high, with only expected missing values in the CouponCode column. No duplicates, invalid formats, calculation errors.

The cleaned dataset was deemed reliable and analysis-ready for Exploratory Data Analysis (EDA) and SQL-based business intelligence reporting.

