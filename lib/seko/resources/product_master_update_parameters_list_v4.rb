module Seko
  module Resources
    class ProductMasterUpdateParametersListV4 < Base
      include Virtus.model

      # OPTIONAL ATTRIBUTES:

      attribute :image,                   [Image]
      attribute :supplier_mapping,        [SupplierMapping]
      attribute :ship_to_company_mapping, [ShipToCompanyMapping]
      attribute :product_category,        [ProductCategory]
      attribute :product_identifier,      [ProductIdentifier]
    end
  end
end
