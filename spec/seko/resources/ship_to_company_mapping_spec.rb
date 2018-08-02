require 'spec_helper'
require './lib/seko'

module Seko
  module Resources
    RSpec.describe ShipToCompanyMapping do
      describe '#to_json_body' do
        it 'returns correct json' do
          ship_to_company_mapping = ShipToCompanyMapping.new(
            branch_code:  'TestBranchCode',
            company_code: 'TestCompanyCode',
            mapped_code:  'TestMappedCode'
          )

          expect(ship_to_company_mapping.to_json_body).to eq(
            {
              'BranchCode'  => 'TestBranchCode',
              'CompanyCode' => 'TestCompanyCode',
              'MappedCode'  => 'TestMappedCode'
            }.to_json
          )
        end
      end
    end
  end
end
