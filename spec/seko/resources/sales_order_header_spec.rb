require 'spec_helper'
require './lib/seko'

module Seko
  module Resources
    RSpec.describe SalesOrderHeader do
      describe '#to_json_body' do
        it 'returns correct json' do
          sales_order_header = SalesOrderHeader.new(dc_code: 'TestDCCode')

          expect(sales_order_header.to_json_body).to eq({ 'DCCode' => 'TestDCCode' }.to_json)
        end
      end
    end
  end
end
