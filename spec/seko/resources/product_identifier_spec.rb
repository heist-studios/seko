require 'spec_helper'
require './lib/seko'

module Seko
  module Resources
    RSpec.describe ProductIdentifier do
      describe '#to_json_body' do
        it 'returns correct json' do
          product_identifier = ProductIdentifier.new(
            name:   'TestName',
            values: 'TestValues'
          )

          expect(product_identifier.to_json_body).to eq(
            {
              'Name'   => 'TestName',
              'Values' => 'TestValues'
            }.to_json
          )
        end
      end
    end
  end
end
