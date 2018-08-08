module Seko
  module Resources
    class ProductMasterUpdateV4
      include Virtus.model

      # REQUIRED ATTRIBUTES:

      attribute :product_code, String
      # presence: true, length: { maximum: 100 }

      # OPTIONAL ATTRIBUTES:

      attribute :bonded, Boolean

      attribute :brand, String
      # length: { maximum: 100 }

      attribute :business, String
      # length: { maximum: 50 }

      attribute :category1, String
      # length: { maximum: 50 }

      attribute :category2, String
      # length: { maximum: 50 }

      attribute :client_product_status, String
      # length: { maximum: 50 }

      attribute :colour, String
      # length: { maximum: 100 }

      attribute :country_of_origin, String
      # length: { maximum: 2 }

      attribute :currency, String
      # length: { maximum: 3 }

      attribute :date_controlled, Boolean

      attribute :ean, String
      # length: { maximum: 50 }

      attribute :gross_weight, Float
      # numericality: true

      attribute :gross_weight_uom, String
      # length: { maximum: 50 }

      attribute :hts_code, String
      # length: { maximum: 200 }

      attribute :hazardous, Boolean

      attribute :inward_processing, Boolean

      attribute :lead_time, Integer
      # numericality: { only_integer: true }

      attribute :lot_controlled, Boolean

      attribute :moq, Integer
      # numericality: { only_integer: true }

      attribute :product_description, String
      # length: { maximum: 200 }

      attribute :product_long_description, String
      # length: { maximum: 500 }

      attribute :product_use, String
      # length: { maximum: 50 }

      attribute :qc_controlled, Boolean

      attribute :qc_percentage, Integer
      # numericality: { only_integer: true }

      attribute :secondary_currency_code, String
      # length: { maximum: 3 }

      attribute :secondary_price, Float
      # numericality: true

      attribute :serial_number_controlled, Boolean

      attribute :size, String
      # length: { maximum: 100 }

      attribute :style_code, String
      # length: { maximum: 100 }

      attribute :unit_price, Float
      # numericality: true

      attribute :wet_bond, Boolean
    end
  end
end
