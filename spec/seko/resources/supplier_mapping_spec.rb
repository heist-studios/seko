require 'spec_helper'
require './lib/seko'

module Seko
  module Resources
    RSpec.describe SupplierMapping do
      describe '#to_json_body' do
        it 'returns correct json' do
          supplier_mapping = SupplierMapping.new(
            supplier_code:        'TestSupplierCode',
            supplier_description: 'TestSupplierDescription',
            uom:                  201
          )

          expect(supplier_mapping.to_json_body).to eq(
            {
              'SupplierCode'        => 'TestSupplierCode',
              'SupplierDescription' => 'TestSupplierDescription',
              'UOM'                 => 201
            }.to_json
          )
        end
      end
    end
  end
end
