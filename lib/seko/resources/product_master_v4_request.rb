module Seko
  module Resources
    class ProductMasterV4Request
      include Virtus.model

      # REQUIRED ATTRIBUTES:

      attribute :product_master, ProductMasterV4

      # OPTIONAL ATTRIBUTES:

      attribute :list, ProductMasterParametersListV4
    end
  end
end
