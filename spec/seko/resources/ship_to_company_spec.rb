require 'spec_helper'
require './lib/seko'

module Seko
  module Resources
    RSpec.describe ShipToCompany do
      describe '#to_json_body' do
        it 'returns correct json' do
          ship_to_company = ShipToCompany.new(
            company_code: 'TestCompanyCode',
            company_description: 'TestCompanyDescription',
            branch_code: 'TestBranchCode',
            company_category: 'TestCompanyCategory',
            lookup_delivery_address: true
          )

          expect(ship_to_company.to_json_body).to eq(
            {
              'CompanyCode'           => 'TestCompanyCode',
              'CompanyDescription'    => 'TestCompanyDescription',
              'BranchCode'            => 'TestBranchCode',
              'CompanyCategory'       => 'TestCompanyCategory',
              'LookupDeliveryAddress' => true
            }.to_json
          )
        end
      end
    end
  end
end
