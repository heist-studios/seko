module Seko
  module Resources
    class ProductIdentifier < Base
      include Virtus.model

      # OPTIONAL ATTRIBUTES:
      attribute :name, String
      # validates :name, length: { maximum: 100 }

      attribute :values, String
      # validates :values, length: { maximum: 200 }
    end
  end
end
