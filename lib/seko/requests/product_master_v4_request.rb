module Seko
  module Requests
    class ProductMasterV4Request
      include Virtus.model

      # REQUIRED ATTRIBUTES:

      attribute :product_master, Seko::Resources::ProductMasterV4

      # OPTIONAL ATTRIBUTES:

      attribute :list, Seko::Lists::ProductMasterParametersListV4
    end
  end
end
