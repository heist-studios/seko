module Seko
  module Resources
    class Base
      def to_json_body
        attributes.transform_keys do |key|
          case key
          when :asn_number
            'ASNNumber'
          when :shipping_vat
            'ShippingVAT'
          when :shipping_ex_vat
            'ShippingExVAT'
          when :secondary_vat
            'SecondaryVAT'
          when :do_not_push_to_dc
            'DoNotPushToDC'
          when :nif_number
            'NIFNumber'
          when :dc_code
            'DCCode'
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
