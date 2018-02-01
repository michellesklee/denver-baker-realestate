#import packages
from pandas import DataFrame
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

#read data from PythonAnywhere
data = pd.read_csv("/home/michellesklee/baker_realestate3.csv")

#examine data
data.head()
       mls  street_number street_name list_price  sold_price list_date  \
0  1904999             43       elati     580500      570000   4/10/17   
1  8825883            114    galapago     389900      395000   11/1/17   
2  2078756            147         1st     615000      629000   9/14/17   
3  9463291            188       byers     575000      561000   9/21/17   
4  4901616            215        inca     325000      325000   10/5/17   
  sold_date  sq_ft  bedrooms  bathrooms  year_built  
0   5/19/17   1575         3        2.0        1901  
1   12/4/17   1288         3        1.0        1910  
2  11/22/17   2312         4        3.0        1901  
3  12/29/17   1845         4        2.0        1901  
4  11/20/17   1644         4        2.0        1955  

#retrieve street name column
data[[2]]
data['street_name']

#retrieve street names of first 4 cases
data[0:4][[2]]
  street_name
0       elati
1    galapago
2         1st
3       byers

#retrieve cases with list price > $400000
data[data['list_price'] > 400000]

#in which street was the house with the lowest list price
data['street_name'][data['list_price'] == data['list_price'].min()]
87    5th

#create new column calculating difference in list price and sold price
data['sold_list_price_diff'] = data['sold_price'] - data['list_price']

#mean of difference in list price and sold price
data["sold_list_price_diff"].mean()
901.4084507042254
#the sold prices of houses in Baker are on average $901 more than the list price

#correlation between square footage and sold price
data['sq_ft'].corr(data['sold_price'])
0.72388491492918838

#linear model 
model = pd.ols(y=data['sold_price'], x=data['sq_ft'])
print model
-------------------------Summary of Regression Analysis-------------------------
Formula: Y ~ <x> + <intercept>
Number of Observations:         90
Number of Degrees of Freedom:   2
R-squared:         0.5240
Adj R-squared:     0.5186
Rmse:          82831.4957
F-stat (1, 88):    96.8776, p-value:     0.0000
Degrees of Freedom: model 1, resid 88
-----------------------Summary of Estimated Coefficients------------------------
      Variable       Coef    Std Err     t-stat    p-value    CI 2.5%   CI 97.5%
--------------------------------------------------------------------------------
             x   174.3733    17.7161       9.84     0.0000   139.6497   209.0968
     intercept 184925.5310 23966.0011       7.72     0.0000 137952.1688 231898.8932
---------------------------------End of Summary---------------------------------

#not surprisingly, there is a positive correlation between square footage and sold price, and the regression analysis is significant


#what is the correlation and regression analysis of square footage and the difference between list and sold price
data['sq_ft'].corr(data['sold_list_price_diff'])
-0.060494307148969646

model2 = pd.ols(y=data['sold_list_price_diff'], x=data['sq_ft'])
print model2
-------------------------Summary of Regression Analysis-------------------------
Formula: Y ~ <x> + <intercept>
Number of Observations:         71
Number of Degrees of Freedom:   2
R-squared:         0.0037
Adj R-squared:    -0.0108
Rmse:          26288.5116
F-stat (1, 69):     0.2534, p-value:     0.6163
Degrees of Freedom: model 1, resid 69
-----------------------Summary of Estimated Coefficients------------------------
      Variable       Coef    Std Err     t-stat    p-value    CI 2.5%   CI 97.5%
--------------------------------------------------------------------------------
             x    -3.1999     6.3563      -0.50     0.6163   -15.6582     9.2584
     intercept  5149.6619  8996.9530       0.57     0.5689 -12484.3659 22783.6898
---------------------------------End of Summary---------------------------------

#there is no correlation between the square footage and the difference between sold and listing price


#is there a difference in square footage when the difference between sold and list price is positive vs. negative?

#first create two new columns, one for houses that sold for more than the list price and the other for houses that sold for less than the list price
data["positive"] = np.where(data.sold_list_price_diff > 0, data.sold_list_price_diff, 0)
data["negative"] = np.where(data.sold_list_price_diff < 0, - data.sold_list_price_diff, 0)

#what are the correlations and linear models for these new variables and square footage
data['sq_ft'].corr(data['positive'])
0.058300690810308364
data['sq_ft'].corr(data['negative'])
0.15415120816547276
model3 = pd.ols(y=data['positive'], x=data['sq_ft'])
print model3
-------------------------Summary of Regression Analysis-------------------------
Formula: Y ~ <x> + <intercept>
Number of Observations:         90
Number of Degrees of Freedom:   2
R-squared:         0.0034
Adj R-squared:    -0.0079
Rmse:          15623.5011
F-stat (1, 88):     0.3001, p-value:     0.5852
Degrees of Freedom: model 1, resid 88
-----------------------Summary of Estimated Coefficients------------------------
      Variable       Coef    Std Err     t-stat    p-value    CI 2.5%   CI 97.5%
--------------------------------------------------------------------------------
             x     1.8307     3.3416       0.55     0.5852    -4.7188     8.3801
     intercept  5724.8373  4520.4163       1.27     0.2087 -3135.1787 14584.8533
---------------------------------End of Summary---------------------------------

model4 = pd.ols(y=data['negative'], x=data['sq_ft'])
print model4
-------------------------Summary of Regression Analysis-------------------------
Formula: Y ~ <x> + <intercept>
Number of Observations:         90
Number of Degrees of Freedom:   2
R-squared:         0.0238
Adj R-squared:     0.0127
Rmse:          13212.8525
F-stat (1, 88):     2.1420, p-value:     0.1469
Degrees of Freedom: model 1, resid 88
-----------------------Summary of Estimated Coefficients------------------------
      Variable       Coef    Std Err     t-stat    p-value    CI 2.5%   CI 97.5%
--------------------------------------------------------------------------------
             x     4.1360     2.8260       1.46     0.1469    -1.4029     9.6749
     intercept  2109.4296  3822.9327       0.55     0.5825 -5383.5185  9602.3778
---------------------------------End of Summary---------------------------------

#model3 and model4 are not significant. there is not difference in square footage between houses that sold above listing price vs. houses that sold below


#is there a relationship between year the house was built and sold price
data['year_built'].corr(data['sold_price'])
0.15189981258853033

model5 = pd.ols(y=data['sold_price'], x=data['year_built'])
print model5
-------------------------Summary of Regression Analysis-------------------------
Formula: Y ~ <x> + <intercept>
Number of Observations:         90
Number of Degrees of Freedom:   2
R-squared:         0.0231
Adj R-squared:     0.0120
Rmse:          118666.2545
F-stat (1, 88):     2.0784, p-value:     0.1529
Degrees of Freedom: model 1, resid 88
-----------------------Summary of Estimated Coefficients------------------------
      Variable       Coef    Std Err     t-stat    p-value    CI 2.5%   CI 97.5%
--------------------------------------------------------------------------------
             x   696.5332   483.1413       1.44     0.1529  -250.4238  1643.4901
     intercept -926162.4527 923153.0566      -1.00     0.3185 -2735542.4436 883217.5383
---------------------------------End of Summary---------------------------------

#the positive relationship between the year built and sold price is not significant

#same analyses but for the difference between sold and list price
data['year_built'].corr(data['positive'])
-0.12617854431086845
model6 = pd.ols(y=data['positive'], x=data['year_built'])
print model6
-------------------------Summary of Regression Analysis-------------------------
Formula: Y ~ <x> + <intercept>
Number of Observations:         90
Number of Degrees of Freedom:   2
R-squared:         0.0159
Adj R-squared:     0.0047
Rmse:          15525.0380
F-stat (1, 88):     1.4237, p-value:     0.2360
Degrees of Freedom: model 1, resid 88
-----------------------Summary of Estimated Coefficients------------------------
      Variable       Coef    Std Err     t-stat    p-value    CI 2.5%   CI 97.5%
--------------------------------------------------------------------------------
             x   -75.4209    63.2091      -1.19     0.2360  -199.3107    48.4690
     intercept 152126.8540 120775.5849       1.26     0.2112 -84593.2923 388847.0004
---------------------------------End of Summary---------------------------------

data['year_built'].corr(data['negative'])
0.13858448445179189
model7 = pd.ols(y=data['negative'], x=data['year_built'])
print model7
-------------------------Summary of Regression Analysis-------------------------
Formula: Y ~ <x> + <intercept>
Number of Observations:         90
Number of Degrees of Freedom:   2
R-squared:         0.0192
Adj R-squared:     0.0081
Rmse:          13243.6544
F-stat (1, 88):     1.7232, p-value:     0.1927
Degrees of Freedom: model 1, resid 88
-----------------------Summary of Estimated Coefficients------------------------
      Variable       Coef    Std Err     t-stat    p-value    CI 2.5%   CI 97.5%
--------------------------------------------------------------------------------
             x    70.7818    53.9206       1.31     0.1927   -34.9026   176.4662
     intercept -127912.6057 103027.7739      -1.24     0.2177 -329847.0426 74021.8312
---------------------------------End of Summary---------------------------------


