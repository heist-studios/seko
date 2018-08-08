module Seko
  module Requests
    class ProductMasterUpdateV4Request
      include Virtus.model

      # REQUIRED ATTRIBUTES:

      attribute :product_master, Seko::Resources::ProductMasterUpdateV4

      # OPTIONAL ATTRIBUTES:

      attribute :list, Seko::Lists::ProductMasterUpdateParametersListV4
    end
  end
end
