# Copyright 2018 Heist Studios Limited
#
# Permission is hereby granted, free of charge, to any person obtaining a
# copy of this software and associated documentation files (the "Software"),
# to deal in the Software without restriction, including without limitation
# the rights to use, copy, modify, merge, publish, distribute, sublicense,
# and/or sell copies of the Software, and to permit persons to whom the
# Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
# OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
# IN THE SOFTWARE.

require 'seko/client'

require 'seko/resources/base'

require 'seko/resources/billing_details'
require 'seko/resources/delivery_details'
require 'seko/resources/forwarding_agent'
require 'seko/resources/sales_order_header'
require 'seko/resources/sales_order_line_item_v4'
require 'seko/resources/sales_order_v4'
require 'seko/resources/sales_orders_request_list_v4'
require 'seko/resources/ship_to_company'
require 'seko/resources/web_delivery_details'
require 'seko/resources/web_sales_order_v4'

require 'seko/resources/image'
require 'seko/resources/product_category'
require 'seko/resources/product_identifier'
require 'seko/resources/product_master_update_v4'
require 'seko/resources/product_master_v4'
require 'seko/resources/ship_to_company_mapping'
require 'seko/resources/supplier_mapping'

require 'seko/resources/product_master_parameters_list_v4'
require 'seko/resources/product_master_update_parameters_list_v4'

require 'seko/resources/product_master_update_v4_request'
require 'seko/resources/product_master_v4_request'
require 'seko/resources/sales_orders_v4_request'
require 'seko/resources/web_sales_orders_v4_request'

GEM_ROOT = File.dirname(File.dirname(__FILE__))

Dir[File.join(GEM_ROOT, 'spec', 'factories', '*.rb')].each do |file|
  require(file)
end
