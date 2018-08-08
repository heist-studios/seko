module Seko
  module Resources
    class ProductCategory
      include Virtus.model

      # OPTIONAL ATTRIBUTES:

      attribute :category_code, String
      # length: { maximum: 100 }
    end
  end
end
