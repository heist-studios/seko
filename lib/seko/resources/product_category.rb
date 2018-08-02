module Seko
  module Resources
    class ProductCategory < Base
      include Virtus.model

      # OPTIONAL ATTRIBUTES:

      attribute :category_code, String
      # validates :category_code, length: { maximum: 100 }
    end
  end
end
