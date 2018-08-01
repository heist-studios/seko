module Seko
  module Resources
    class SalesOrderLineItemV4 < Base
      include Virtus.model

      # REQUIRED ATTRIBUTES:

      attribute :line_number, Integer
      # validates :line_number, presence: true, numericality: { only_integer: true }

      attribute :quantity, Integer
      # validates :quantity, presence: true, numericality: { only_integer: true }

      # OPTIONAL ATTRIBUTES:

      attribute :asn_number, String

      attribute :channel, String
      # validates :channel, length: { maximum: 100 }

      attribute :country_code, String
      # validates :country_code, length: { maximum: 100 }

      attribute :currency_code, String
      # validates :currency_code, length: { maximum: 3 }

      attribute :customs_value, Float
      # validates :customs_value, numericality: true

      attribute :ean, String
      # validates :ean, length: { maximum: 100 }

      attribute :external_document_no, String
      # validates :external_document_no, length: { maximum: 100 }

      attribute :guid, String
      # validates :guid, length: { maximum: 100 }

      attribute :lot_no, String
      # validates :lot_no, length: { maximum: 100 }

      attribute :order_line_message, String
      # validates :order_line_message, length: { maximum: 100 }

      attribute :product_code, String
      # validates :product_code, length: { maximum: 100 }

      attribute :secondary_currency_code, String
      # validates :secondary_currency_code, length: { maximum: 3 }

      attribute :secondary_unit_price, Float
      # validates :secondary_unit_price, numericality: true

      attribute :secondary_vat, Float
      # validates :secondary_vat, numericality: true

      attribute :unit_discount_price, Float
      # validates :unit_discount_price, numericality: true

      attribute :unit_price, Float
      # validates :unit_price, numericality: true

      attribute :vat, Float
      # validates :vat, numericality: true
    end
  end
end
