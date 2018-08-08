# Seko

This gem simplifies communication with SEKO REST API [iHubService](https://bigdigit.atlassian.net/wiki/spaces/IH2/pages/12025935/iHub+Services)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'seko', git: 'git@github.com:heist-studios/seko.git'
```

And then execute:

    $ bundle

## Getting Started

Currently there are 5 methods that work on the instance of the `Seko::Client` class:
* `load_web_sales_order` [link to api page](https://bigdigit.atlassian.net/wiki/spaces/IH2/pages/12386616/API+Load+Web+Sales+Orders)
* `load_product_master` [link to api page](https://bigdigit.atlassian.net/wiki/spaces/IH2/pages/12386504/API+Load+Product+Masters)
* `load_product_master_update` [link to api page](https://bigdigit.atlassian.net/wiki/spaces/IH2/pages/12386517/API+Load+Product+Master+Updates)
* `retrieve_stock_quantity` [link to api page](https://bigdigit.atlassian.net/wiki/spaces/IH2/pages/12386628/API+Retrieve+Stock+Quantity)
* `load_sales_order_cancellation` [link to api page](https://bigdigit.atlassian.net/wiki/spaces/IH2/pages/12386570/API+Load+Sales+Order+Cancellations)

You can create `Seko::Client` instance by passing `api_key` you retrieved from SEKO and `live` parameter which indicates if you want to use test or live url:

```ruby
# for production you should use https://ihub.supplystream.com:8081/api/
client = Seko::Client.new(api_key: 'ABC', live: true)

# for testing/staging you should use https://ihubuat.supplystream.com:8081/api/ 
client = Seko::Client.new(api_key: 'ABC', live: false)
```

It's highly recommended that you don't include the api_key within your repo, but instead use environmental variables.

#### load_web_sales_order

For creating a web sales order you should first build `WebSalesOrdersV4Request` object which is consistent from those attributes:

* billing_details    [BillingDetails](https://github.com/heist-studios/seko/blob/master/lib/seko/resources/billing_details.rb)
* delivery_details   [WebDeliveryDetails](https://github.com/heist-studios/seko/blob/master/lib/seko/resources/web_delivery_details.rb)
* forwarding_agent   [ForwardingAgent](https://github.com/heist-studios/seko/blob/master/lib/seko/resources/forwarding_agent.rb)
* list               [SalesOrdersRequestListV4](https://github.com/heist-studios/seko/blob/master/lib/seko/resources/sales_orders_request_list_v4.rb) 
  * [SalesOrderLineItemV4](https://github.com/heist-studios/seko/blob/master/lib/seko/resources/sales_order_line_item_v4.rb)
* sales_order_header [SalesOrderHeader](https://github.com/heist-studios/seko/blob/master/lib/seko/resources/sales_order_header.rb)
* web_sales_order    [WebSalesOrderV4](https://github.com/heist-studios/seko/blob/master/lib/seko/resources/web_sales_order_v4.rb)

Here is the minimal amount of attributes you have to pass to send correct request:

```ruby
web_sales_order = Seko::Resources::WebSalesOrderV4.new(sales_order_number: 'SON-123')
web_delivery_details = Seko::Resources::WebDeliveryDetails.new(
  first_name: 'Bill', 
  last_name: 'Barkworth', 
  line1: 'Harding Road', 
  city: 'Milton Keynes', 
  county: 'Buckinghamshire', 
  postcode_zip: 'MK10 0DF', 
  country_code: 'GB', 
  phone_number: '0123 336 6676', 
  email_address: 'Stephen.Jones@xyz.com'
)
billing_details = Seko::Resources::BillingDetails.new(
  line1: 'Harding Road',
  city: 'Milton Keynes',
  county: 'Buckinghamshire', 
  postcode_zip: 'MK10 0DF',
  country_code: 'GB'
)
# NOTE: product with product_code have to exists!
item = Seko::Resources::SalesOrderLineItemV4.new(
  line_number:'1', 
  product_code:'PMTest123', 
  quantity:'1', 
  unit_price:'6.99', 
  currency_code:'GBP'
)
list = Seko::Resources::SalesOrdersRequestListV4.new(sales_order_line_item: [item])

order = Seko::Resources::WebSalesOrdersV4Request.new(
  web_sales_order: web_sales_order, 
  delivery_details: web_delivery_details, 
  billing_details: billing_details, 
  list: list
)

client.load_web_sales_order(order)
```
 
#### load_product_master

For creating a product you should first build `ProductMasterV4Request` object which is consistent from those attributes:

* product_master [ProductMasterV4](https://github.com/heist-studios/seko/blob/master/lib/seko/resources/product_master_v4.rb)
* list [ProductMasterParametersListV4](https://github.com/heist-studios/seko/blob/master/lib/seko/resources/product_master_parameters_list_v4.rb)
  * [Image](https://github.com/heist-studios/seko/blob/master/lib/seko/resources/image.rb)
  * [SupplierMapping](https://github.com/heist-studios/seko/blob/master/lib/seko/resources/supplier_mapping.rb)
  * [ShipToCompanyMapping](https://github.com/heist-studios/seko/blob/master/lib/seko/resources/ship_to_company_mapping.rb)
  * [ProductCategory](https://github.com/heist-studios/seko/blob/master/lib/seko/resources/product_category.rb)
  * [ProductIdentifier](https://github.com/heist-studios/seko/blob/master/lib/seko/resources/product_identifier.rb)

Here is the minimal amount of attributes you have to pass to send correct request:

```ruby
product_master = Seko::Resources::ProductMasterV4.new(product_code: 'code_123')

product = Seko::Resources::ProductMasterV4Request.new(product_master: product_master)

client.load_product_master(product)
```

#### load_product_master_update

For updating a product you should first build `ProductMasterUpdateV4Request` object which is consistent from those attributes:

* product_master [ProductMasterUpdateV4](https://github.com/heist-studios/seko/blob/master/lib/seko/resources/product_master_update_v4.rb)
* list [ProductMasterUpdateParametersListV4](https://github.com/heist-studios/seko/blob/master/lib/seko/resources/product_master_update_parameters_list_v4.rb)
  * [Image](https://github.com/heist-studios/seko/blob/master/lib/seko/resources/image.rb)
  * [SupplierMapping](https://github.com/heist-studios/seko/blob/master/lib/seko/resources/supplier_mapping.rb)
  * [ShipToCompanyMapping](https://github.com/heist-studios/seko/blob/master/lib/seko/resources/ship_to_company_mapping.rb)
  * [ProductCategory](https://github.com/heist-studios/seko/blob/master/lib/seko/resources/product_category.rb)
  * [ProductIdentifier](https://github.com/heist-studios/seko/blob/master/lib/seko/resources/product_identifier.rb)

The minimal amount of attributes you have to pass are the same as it is in `load_product_master` but you have to specify one more different attribute to make an actual update, for instance:

```ruby
product_update = Seko::Resources::ProductMasterUpdateV4.new(product_code: 'test', currency: 'PLN')

product = Seko::Resources::ProductMasterUpdateV4Request.new(product_master: product_update)

client.load_product_master(product)
```

#### retrieve_stock_quantity

Retrieving stock from SEKO required passing one of those attributes:

* `product_codes` (array of strings [product codes])
* `dc_code` (string, SEKO created code that uniquely identifies the DC from other SEKO DC's. This code is supplied by SEKO)

Recommended way of using this endpoint:

```ruby
# NOTE: products with those product_codes have to be created first 
client.retrieve_stock_quantity(product_codes: %w[PMTest123 PMTest234])
```

#### load_sales_order_cancellation

The minimal amount of attributes you have to pass to cancel a sales order:

```ruby
response = client.load_sales_order_cancellation(sales_order_number: 'SOTest234')
```

you can also add `reason_code` argument and according to documentation you can pass those values:

* 001 - Customer Request
* 002 - Order Delayed
* 003 - Duplicate
* 004 - Item not available
* 005 - Cannot ship to address
* 006 - Other

```ruby
response = client.load_sales_order_cancellation(sales_order_number: 'SOTest234', reason_code: '001')
```

## License

Copyright 2018 Heist Studios Limited

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
