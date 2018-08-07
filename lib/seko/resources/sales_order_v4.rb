module Seko
  module Resources
    class SalesOrderV4 < Base
      include Virtus.model

      # REQUIRED ATTRIBUTES:

      attribute :sales_order_number, String
      # presence: true, length: { maximum: 50 }

      # OPTIONAL ATTRIBUTES:

      attribute :carrier_customer_account_no, String
      # length: { maximum: 100 }

      attribute :courier_name, String
      # length: { maximum: 100 }

      attribute :courier_service, String
      # length: { maximum: 100 }

      attribute :courier_shop_id, String
      # length: { maximum: 50 }

      attribute :currency_code, String
      # length: { maximum: 3 }

      attribute :customs_value_total, Float
      # numericality: true

      attribute :delivery_address_location_type, String
      # length: { maximum: 100 }

      attribute :discount_price_total, Float
      # numericality: true

      attribute :document_identifier, String
      # length: { maximum: 100 }

      attribute :do_not_push_to_dc, Boolean

      attribute :gift_message, String
      # length: { maximum: 500 }

      attribute :gift_message_from, String
      # length: { maximum: 100 }

      attribute :gift_message_to, String
      # length: { maximum: 100 }

      attribute :gift_wrap, Boolean

      attribute :guid, String
      # length: { maximum: 100 }

      attribute :location_type, String
      # length: { maximum: 100 }

      attribute :nif_number, String
      # length: { maximum: 100 }

      attribute :notes, String
      # length: { maximum: 4000 }

      attribute :notification_method, String
      # length: { maximum: 50 }

      attribute :on_hold, Boolean

      attribute :order_type, String
      # length: { maximum: 100 }

      attribute :sales_invoice_number, String
      # length: { maximum: 100 }

      attribute :sales_order_date, String

      attribute :sales_order_reference, String
      # length: { maximum: 50 }

      attribute :scheduled_ship_date, String

      attribute :shipment_terms, String
      # length: { maximum: 100 }

      attribute :shipping_ex_vat, Float
      # numericality: true

      attribute :shipping_term, String
      # length: { maximum: 50 }

      attribute :shipping_term_location, String
      # length: { maximum: 50 }

      attribute :shipping_total, Float
      # numericality: true

      attribute :shipping_vat, Float
      # numericality: true

      attribute :special_instructions, String
      # length: { maximum: 400 }

      attribute :sub_total, Float
      # numericality: true

      attribute :tax_total, Float
      # numericality: true

      attribute :ultimate_destination, String
      # length: { maximum: 100 }
    end
  end
end
