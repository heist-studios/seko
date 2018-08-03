module Seko
  module Resources
    class WebSalesOrderV4 < Base
      include Virtus.model

      # REQUIRED ATTRIBUTES:

      attribute :sales_order_number, String
      # validates :sales_order_number, presence: true, length: { maximum: 50 }

      # OPTIONAL ATTRIBUTES:

      attribute :carrier_customer_account_no, String
      # validates :carrier_customer_account_no, length: { maximum: 100 }

      attribute :courier_name, String
      # validates :courier_name, length: { maximum: 100 }

      attribute :courier_service, String
      # validates :courier_service, length: { maximum: 100 }

      attribute :courier_shop_id, String
      # validates :courier_shop_id, length: { maximum: 50 }

      attribute :currency_code, String
      # validates :currency_code, length: { maximum: 3 }

      attribute :customs_value_total, Float
      # validates :customs_value_total, numericality: true

      attribute :delivery_address_location_type, String
      # validates :delivery_address_location_type, length: { maximum: 100 }

      attribute :discount_price_total, Float
      # validates :discount_price_total, numericality: true

      attribute :document_identifier, String
      # validates :document_identifier, length: { maximum: 100 }

      attribute :do_not_push_to_dc, Boolean

      attribute :gift_message, String
      # validates :gift_message, length: { maximum: 500 }

      attribute :gift_message_from, String
      # validates :gift_message_from, length: { maximum: 100 }

      attribute :gift_message_to, String
      # validates :gift_message_to, length: { maximum: 100 }

      attribute :gift_wrap, Boolean

      attribute :guid, String
      # validates :guid, length: { maximum: 100 }

      attribute :location_type, String
      # validates :location_type, length: { maximum: 100 }

      attribute :nif_number, String
      # validates :nif_number, length: { maximum: 100 }

      attribute :notes, String
      # validates :notes, length: { maximum: 4000 }

      attribute :notification_method, String
      # validates :notification_method, length: { maximum: 50 }

      attribute :on_hold, Boolean

      attribute :order_type, String
      # validates :order_type, length: { maximum: 100 }

      attribute :sales_invoice_number, String
      # validates :sales_invoice_number, length: { maximum: 100 }

      attribute :sales_order_date, String

      attribute :sales_order_reference, String
      # validates :sales_order_reference, length: { maximum: 50 }

      attribute :scheduled_ship_date, String

      attribute :shipment_terms, String
      # validates :shipment_terms, length: { maximum: 100 }

      attribute :shipping_ex_vat, Float
      # validates :shipping_ex_vat, numericality: true

      attribute :shipping_term, String
      # validates :shipping_term, length: { maximum: 50 }

      attribute :shipping_term_location, String
      # validates :shipping_term_location, length: { maximum: 50 }

      attribute :shipping_total, Float
      # validates :shipping_total, numericality: true

      attribute :shipping_vat, Float
      # validates :shipping_vat, numericality: true

      attribute :special_instructions, String
      # validates :special_instructions, length: { maximum: 400 }

      attribute :sub_total, Float
      # validates :sub_total, numericality: true

      attribute :tax_total, Float
      # validates :tax_total, numericality: true

      attribute :ultimate_destination, String
      # validates :ultimate_destination, length: { maximum: 100 }
    end
  end
end
