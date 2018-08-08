module Seko
  module Resources
    class SalesOrdersRequestListV4
      include Virtus.model

      # OPTIONAL ATTRIBUTES:

      attribute :sales_order_line_item, [SalesOrderLineItemV4]
    end
  end
end
