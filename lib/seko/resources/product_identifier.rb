module Seko
  module Resources
    class ProductIdentifier < Base
      include Virtus.model

      # OPTIONAL ATTRIBUTES:

      attribute :name, String
      # length: { maximum: 100 }

      attribute :values, String
      # length: { maximum: 200 }
    end
  end
end
