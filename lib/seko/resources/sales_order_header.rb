module Seko
  module Resources
    class SalesOrderHeader < Base
      include Virtus.model

      # OPTIONAL ATTRIBUTES:

      attribute :dc_code, String
      # length: { maximum: 100 }
    end
  end
end
