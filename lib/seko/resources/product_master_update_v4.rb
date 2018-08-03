module Seko
  module Resources
    class ProductMasterUpdateV4 < Base
      include Virtus.model

      # REQUIRED ATTRIBUTES:

      attribute :product_code, String
      # validates :ProductCode, length: { maximum: 100 }

      # OPTIONAL ATTRIBUTES:

      attribute :bonded, Boolean

      attribute :brand, String
      # validates :Brand, length: { maximum: 100 }

      attribute :business, String
      # validates :Business, length: { maximum: 50 }

      attribute :category1, String
      # validates :Category1, length: { maximum: 50 }

      attribute :category2, String
      # validates :Category2, length: { maximum: 50 }

      attribute :client_product_status, String
      # validates :ClientProductStatus, length: { maximum: 50 }

      attribute :colour, String
      # validates :Colour, length: { maximum: 100 }

      attribute :country_of_origin, String
      # validates :CountryOfOrigin, length: { maximum: 2 }

      attribute :currency, String
      # validates :Currency, length: { maximum: 3 }

      attribute :date_controlled, Boolean

      attribute :ean, String
      # validates :EAN, length: { maximum: 50 }

      attribute :gross_weight, Float
      # validates :GrossWeight, numericality: true

      attribute :gross_weight_uom, String
      # validates :GrossWeightUOM, length: { maximum: 50 }

      attribute :hts_code, String
      # validates :HTSCode, length: { maximum: 200 }

      attribute :hazardous, Boolean

      attribute :inward_processing, Boolean

      attribute :lead_time, Integer
      # validates :LeadTime, numericality: { only_integer: true }

      attribute :lot_controlled, Boolean

      attribute :moq, Integer
      # validates :qc_percentage, numericality: { only_integer: true }

      attribute :product_description, String
      # validates :ProductDescription, length: { maximum: 200 }

      attribute :product_long_description, String
      # validates :ProductLongDescription, length: { maximum: 500 }

      attribute :product_use, String
      # validates :ProductUse, length: { maximum: 50 }

      attribute :qc_controlled, Boolean

      attribute :qc_percentage, Integer
      # validates :qc_percentage, numericality: { only_integer: true }

      attribute :secondary_currency_code, String
      # validates :SecondaryCurrencyCode, length: { maximum: 3 }

      attribute :secondary_price, Float
      # validates :SecondaryPrice, numericality: true

      attribute :serial_number_controlled, Boolean

      attribute :size, String
      # validates :Size, length: { maximum: 100 }

      attribute :style_code, String
      # validates :StyleCode, length: { maximum: 100 }

      attribute :unit_price, Float
      # validates :UnitPrice, numericality: true

      attribute :wet_bond, Boolean
    end
  end
end
