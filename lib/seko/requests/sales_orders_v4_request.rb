module Seko
  module Requests
    class SalesOrdersV4Request
      include Virtus.model

      # OPTIONAL ATTRIBUTES:

      attribute :billing_details,    Seko::Resources::BillingDetails
      attribute :delivery_details,   Seko::Resources::DeliveryDetails
      attribute :forwarding_agent,   Seko::Resources::ForwardingAgent
      attribute :list,               Seko::Lists::SalesOrdersRequestListV4
      attribute :sales_order,        Seko::Resources::SalesOrderV4
      attribute :sales_order_header, Seko::Resources::SalesOrderHeader
      attribute :ship_to_company,    Seko::Resources::ShipToCompany
    end
  end
end
