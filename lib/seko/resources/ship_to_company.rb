module Seko
  module Resources
    class ShipToCompany < Base
      include Virtus.model

      # REQUIRED ATTRIBUTES:

      attribute :company_code, String
      # validates :company_code, presence: true, length: { maximum: 100 }

      attribute :company_description, String
      # validates :company_description, presence: true, length: { maximum: 200 }

      # OPTIONAL ATTRIBUTES:

      attribute :branch_code, String
      # validates :branch_code, length: { maximum: 50 }

      attribute :company_category, String
      # validates :company_category, length: { maximum: 50 }

      attribute :lookup_delivery_address, Boolean
    end
  end
end
