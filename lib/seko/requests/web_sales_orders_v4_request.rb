module Seko
  module Requests
    class WebSalesOrdersV4Request
      include Virtus.model

      # OPTIONAL ATTRIBUTES:

      attribute :billing_details,    Seko::Resources::BillingDetails
      attribute :delivery_details,   Seko::Resources::WebDeliveryDetails
      attribute :forwarding_agent,   Seko::Resources::ForwardingAgent
      attribute :list,               Seko::Lists::SalesOrdersRequestListV4
      attribute :sales_order_header, Seko::Resources::SalesOrderHeader
      attribute :web_sales_order,    Seko::Resources::WebSalesOrderV4
    end
  end
end
