module Seko
  module Resources
    class ShipToCompanyMapping
      include Virtus.model

      # OPTIONAL ATTRIBUTES:

      attribute :branch_code, String
      # length: { maximum: 50 }

      attribute :company_code, String
      # length: { maximum: 100 }

      attribute :mapped_code, String
      # length: { maximum: 200 }
    end
  end
end
