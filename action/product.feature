Feature:Discount comparison

Scenario:To find the lowest discount product and highest product
    
* def lowestDiscountProduct = Products.sort((a, b) => a.Discount - b.Discount)[0]
* print lowestDiscountProduct.ProductName

* def highestPriceProduct = Products.sort((a, b) => b.Price - a.Price)[0]
* print highestPriceProduct.Id, highestPriceProduct.ProductName
