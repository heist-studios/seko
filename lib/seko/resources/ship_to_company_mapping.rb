module Seko
  module Resources
    class ShipToCompanyMapping < Base
      include Virtus.model

      # OPTIONAL ATTRIBUTES:
      attribute :branch_code, String
      # validates :branch_code, length: { maximum: 50 }

      attribute :company_code, String
      # validates :company_code, length: { maximum: 100 }

      attribute :mapped_code, String
      # validates :mapped_code, length: { maximum: 200 }
    end
  end
end
