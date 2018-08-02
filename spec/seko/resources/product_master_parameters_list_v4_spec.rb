require 'spec_helper'
require './lib/seko'

module Seko
  module Resources
    RSpec.describe ProductMasterParametersListV4 do
      describe '#to_json_body' do
        it 'returns correct json' do
          image = Image.new(
            image_data:    'TestImageData',
            default_image: true
          )
          supplier_mapping = SupplierMapping.new(
            supplier_code:        'TestSupplierCode',
            supplier_description: 'TestSupplierDescription',
            uom:                  201
          )
          ship_to_company_mapping = ShipToCompanyMapping.new(
            branch_code:  'TestBranchCode',
            company_code: 'TestCompanyCode',
            mapped_code:  'TestMappedCode'
          )
          product_category = ProductCategory.new(category_code: 'TestCategoryCode')
          product_identifier = ProductIdentifier.new(
            name:   'TestName',
            values: 'TestValues'
          )
          product_master_parameters_list = ProductMasterParametersListV4.new(
            image:                   [image],
            supplier_mapping:        [supplier_mapping],
            ship_to_company_mapping: [ship_to_company_mapping],
            product_category:        [product_category],
            product_identifier:      [product_identifier]
          )

          expect(product_master_parameters_list.to_json_body).to eq(
            {
              'Image' => [{
                'ImageData'    => 'TestImageData',
                'DefaultImage' => true
              }],
              'SupplierMapping' => [{
                'SupplierCode'        => 'TestSupplierCode',
                'SupplierDescription' => 'TestSupplierDescription',
                'UOM'                 => 201
              }],
              'ShipToCompanyMapping' => [{
                'BranchCode'  => 'TestBranchCode',
                'CompanyCode' => 'TestCompanyCode',
                'MappedCode'  => 'TestMappedCode'
              }],
              'ProductCategory' => [{
                'CategoryCode' => 'TestCategoryCode'
              }],
              'ProductIdentifier' => [{
                'Name'   => 'TestName',
                'Values' => 'TestValues'
              }]
            }.to_json
          )
        end
      end
    end
  end
end
