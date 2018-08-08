module Seko
  module Resources
    class WebSalesOrdersV4Request
      include Virtus.model

      # OPTIONAL ATTRIBUTES:

      attribute :billing_details,    BillingDetails
      attribute :delivery_details,   WebDeliveryDetails
      attribute :forwarding_agent,   ForwardingAgent
      attribute :list,               SalesOrdersRequestListV4
      attribute :sales_order_header, SalesOrderHeader
      attribute :web_sales_order,    WebSalesOrderV4
    end
  end
end
