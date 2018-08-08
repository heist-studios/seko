module Seko
  module Resources
    class SalesOrderLineItemV4
      include Virtus.model

      # REQUIRED ATTRIBUTES:

      attribute :line_number, Integer
      # presence: true, numericality: { only_integer: true }

      attribute :quantity, Integer
      # presence: true, numericality: { only_integer: true }

      # OPTIONAL ATTRIBUTES:

      attribute :asn_number, String

      attribute :channel, String
      # length: { maximum: 100 }

      attribute :country_code, String
      # length: { maximum: 100 }

      attribute :currency_code, String
      # length: { maximum: 3 }

      attribute :customs_value, Float
      # numericality: true

      attribute :ean, String
      # length: { maximum: 100 }

      attribute :external_document_no, String
      # length: { maximum: 100 }

      attribute :guid, String
      # length: { maximum: 100 }

      attribute :lot_no, String
      # length: { maximum: 100 }

      attribute :order_line_message, String
      # length: { maximum: 100 }

      attribute :product_code, String
      # length: { maximum: 100 }

      attribute :secondary_currency_code, String
      # length: { maximum: 3 }

      attribute :secondary_unit_price, Float
      # numericality: true

      attribute :secondary_vat, Float
      # numericality: true

      attribute :unit_discount_price, Float
      # numericality: true

      attribute :unit_price, Float
      # numericality: true

      attribute :vat, Float
      # numericality: true
    end
  end
end
