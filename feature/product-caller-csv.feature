Feature:product caller csv

Scenario:Execute product discount tests
* def Products = read('../inputs/product.csv')
* call read('../action/product.feature')