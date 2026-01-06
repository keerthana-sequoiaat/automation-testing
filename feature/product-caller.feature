Feature:Product Caller

Scenario: Execute product discount tests
  * call read('../action/data.feature@lowestDiscount')
  * call read('../action/product.feature')
