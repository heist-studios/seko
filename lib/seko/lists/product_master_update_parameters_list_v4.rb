module Seko
  module Lists
    class ProductMasterUpdateParametersListV4
      include Virtus.model

      # OPTIONAL ATTRIBUTES:

      attribute :image,                   [Seko::Resources::Image]
      attribute :supplier_mapping,        [Seko::Resources::SupplierMapping]
      attribute :ship_to_company_mapping, [Seko::Resources::ShipToCompanyMapping]
      attribute :product_category,        [Seko::Resources::ProductCategory]
      attribute :product_identifier,      [Seko::Resources::ProductIdentifier]
    end
  end
end
