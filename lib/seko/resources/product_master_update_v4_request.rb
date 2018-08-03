module Seko
  module Resources
    class ProductMasterUpdateV4Request < Base
      include Virtus.model

      # REQUIRED ATTRIBUTES:

      attribute :product_master, ProductMasterUpdateV4

      # OPTIONAL ATTRIBUTES:

      attribute :list, ProductMasterUpdateParametersListV4
    end
  end
end
