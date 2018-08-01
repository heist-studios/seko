module Seko
  module Resources
    class SalesOrdersV4Request < Base
      include Virtus.model

      # OPTIONAL ATTRIBUTES:

      attribute :billing_details,    BillingDetails
      attribute :delivery_details,   DeliveryDetails
      attribute :forwarding_agent,   ForwardingAgent
      attribute :list,               Hash[String => [SalesOrderLineItemV4]]
      attribute :sales_order_v4,     SalesOrderV4
      attribute :sales_order_header, SalesOrderHeader
      attribute :ship_to_company,    ShipToCompany
    end
  end
end
