module Seko
  module Serializers
    class Base
      def initialize(object)
        @object = object
      end

      def serialize
        transform_keys(object.attributes).to_json
      end

      private

      attr_reader :object

      def transform_keys(attrs)
        attrs.inject({}) do |acc, (key, val)|
          if val.nil?
          elsif val.respond_to?(:attributes)
            acc[transform_simple_key(key)] = transform_keys(val.attributes)
          elsif val.is_a?(Array)
            acc[transform_simple_key(key)] = val.map { |el| transform_keys(el.attributes) }
          else
            acc[transform_simple_key(key)] = val
          end
          acc
        end
      end

      def transform_simple_key(key)
        key.to_s.split('_').map do |k|
          if %w[asn dc ean guid nif vat qc uom hts vat moq].include?(k)
            k.upcase
          else
            k.capitalize
          end
        end.join
      end
    end
  end
end
