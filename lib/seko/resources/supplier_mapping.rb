module Seko
  module Resources
    class SupplierMapping < Base
      include Virtus.model

      # OPTIONAL ATTRIBUTES:
      attribute :supplier_code,        String

      attribute :supplier_description, String

      attribute :uom,                  Integer
      # validates :uom, numericality: { only_integer: true }
    end
  end
end
