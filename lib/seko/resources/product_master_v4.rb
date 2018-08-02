module Seko
  module Resources
    class ProductMasterV4 < Base
      include Virtus.model

      # REQUIRED ATTRIBUTES:

      attribute :product_code, String
      # validates :product_code, presence: true, length: { maximum: 100 }

      # OPTIONAL ATTRIBUTES:

      attribute :bonded, Boolean

      attribute :brand, String
      # validates :brand, length: { maximum: 100 }

      attribute :business, String
      # validates :businessd, length: { maximum: 50 }

      attribute :category1, String
      # validates :category1, length: { maximum: 50 }

      attribute :category2, String
      # validates :category2, length: { maximum: 50 }

      attribute :client_product_status, String
      # validates :client_product_status, length: { maximum: 50 }

      attribute :colour, String
      # validates :colour, length: { maximum: 100 }

      attribute :country_of_origin, String
      # validates :country_of_origin, length: { maximum: 2 }

      attribute :currency, String
      # validates :currency, length: { maximum: 3 }

      attribute :date_controlled, Boolean

      attribute :ean, String

      attribute :gross_weight, Float
      # validates :gross_weight, numericality: true

      attribute :gross_weight_uom, String
      # validates :gross_weight_uom, length: { maximum: 50 }

      attribute :group_identifier, String
      # validates :group_identifier, length: { maximum: 100 }

      attribute :hts_code, String

      attribute :hazardous, Boolean

      attribute :inward_processing, Boolean

      attribute :lead_time, Integer
      # validates :lead_time, numericality: { only_integer: true }

      attribute :lot_controlled, Boolean

      attribute :moq, Integer
      # validates :moq, numericality: { only_integer: true }

      attribute :product_description, String

      attribute :product_long_description, String
      # validates :product_long_description, length: { maximum: 500 }

      attribute :product_use, String
      # validates :product_use, length: { maximum: 50 }

      attribute :qc_controlled, Boolean

      attribute :qc_percentage, Integer
      # validates :qc_percentage, numericality: { only_integer: true }

      attribute :secondary_currency_code, String
      # validates :secondary_currency_code, length: { maximum: 3 }

      attribute :secondary_price, Float
      # validates :secondary_price, numericality: true

      attribute :serial_number_controlled, Boolean

      attribute :size, String
      # validates :size, length: { maximum: 100 }

      attribute :style_code, String
      # validates :style_code, length: { maximum: 100 }

      attribute :unit_price, Float
      # validates :unit_price, numericality: true

      attribute :wet_bond, Boolean
    end
  end
end
