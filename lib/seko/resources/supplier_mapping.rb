module Seko
  module Resources
    class SupplierMapping
      include Virtus.model

      # OPTIONAL ATTRIBUTES:

      attribute :supplier_code,        String

      attribute :supplier_description, String

      attribute :uom,                  Integer
      # numericality: { only_integer: true }
    end
  end
end
