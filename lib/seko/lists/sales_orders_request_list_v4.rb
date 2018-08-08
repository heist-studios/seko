module Seko
  module Lists
    class SalesOrdersRequestListV4
      include Virtus.model

      # OPTIONAL ATTRIBUTES:

      attribute :sales_order_line_item, [Seko::Resources::SalesOrderLineItemV4]
    end
  end
end
