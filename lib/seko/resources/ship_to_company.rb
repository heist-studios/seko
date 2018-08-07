module Seko
  module Resources
    class ShipToCompany < Base
      include Virtus.model

      # REQUIRED ATTRIBUTES:

      attribute :company_code, String
      # presence: true, length: { maximum: 100 }

      attribute :company_description, String
      # presence: true, length: { maximum: 200 }

      # OPTIONAL ATTRIBUTES:

      attribute :branch_code, String
      # length: { maximum: 50 }

      attribute :company_category, String
      # length: { maximum: 50 }

      attribute :lookup_delivery_address, Boolean
    end
  end
end
