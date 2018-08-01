module Seko
  module Resources
    class Base

      def to_json_body
        attributes.transform_keys do |key|
          case key
          when :asn_number
            'ASNNumber'
          when :secondary_vat
            'SecondaryVAT'
          when :guid, :ean, :vat
            key.upcase
          else
            key.to_s.split('_').map(&:capitalize).join
          end
        end.to_json
      end
    end
  end
end
