module Seko
  module Resources
    class SalesOrdersV4Request
      include Virtus.model

      # OPTIONAL ATTRIBUTES:

      attribute :billing_details,    BillingDetails
      attribute :delivery_details,   DeliveryDetails
      attribute :forwarding_agent,   ForwardingAgent
      attribute :list,               SalesOrdersRequestListV4
      attribute :sales_order,        SalesOrderV4
      attribute :sales_order_header, SalesOrderHeader
      attribute :ship_to_company,    ShipToCompany
    end
  end
end
