require 'spec_helper'
require './lib/seko'

module Seko
  RSpec.describe Client do
    describe '#load_product_master' do
      it 'makes request to SEKO API' do
        stub_const('Seko::Client::API_URL', 'https://test.service.com:8081/api/')
        stub_request(:post, "#{Seko::Client::API_URL}products/v4/submit")
          .with(
            headers: {
              'Content-Type' => 'application/json',
              'Accept'       => 'application/json'
            },
            query: { 'api_key' => 'ABC' },
            body: {
                       'ProductMaster' => {
                         'ProductCode'            => 'TestProductCode',
                         'Bonded'                 => true,
                         'Brand'                  => 'TestBrand',
                         'Business'               => 'TestBusiness',
                         'Category1'              => 'TestCategory1',
                         'Category2'              => 'TestCategory2',
                         'ClientProductStatus'    => 'TestClientProductStatus',
                         'Colour'                 => 'TestColour',
                         'CountryOfOrigin'        => 'PL',
                         'Currency'               => 'PLN',
                         'DateControlled'         => true,
                         'EAN'                    => 'TestEAN',
                         'GrossWeight'            => 105.0,
                         'GrossWeightUOM'         => 'TestGrossWeightUOM',
                         'GroupIdentifier'        => 'TestGroupIdentifier',
                         'HTSCode'                => 'TestHTSCode',
                         'Hazardous'              => true,
                         'InwardProcessing'       => true,
                         'LeadTime'               => 103,
                         'LotControlled'          => true,
                         'MOQ'                    => 104,
                         'ProductDescription'     => 'TestProductDescription',
                         'ProductLongDescription' => 'TestProductLongDescription',
                         'ProductUse'             => 'TestProductUse',
                         'QCControlled'           => true,
                         'QCPercentage'           => 101,
                         'SecondaryCurrencyCode'  => 'EUR',
                         'SecondaryPrice'         => 104.0,
                         'SerialNumberControlled' => true,
                         'Size'                   => 'TestSize',
                         'StyleCode'              => 'TestStyleCode',
                         'UnitPrice'              => 102.0,
                         'WetBond'                => true
                       },
                       'List' => {
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
                       }
                     }.to_json
          ).to_return(
          body: {
                  'CallStatus' => {
                    'Success' => true,
                    'Code'    => 0,
                    'Message' => ''
                  }
                }.to_json
        )

        image = Resources::Image.new(
          image_data:    'TestImageData',
          default_image: true
        )
        supplier_mapping = Resources::SupplierMapping.new(
          supplier_code:        'TestSupplierCode',
          supplier_description: 'TestSupplierDescription',
          uom:                  201
        )
        ship_to_company_mapping = Resources::ShipToCompanyMapping.new(
          branch_code:  'TestBranchCode',
          company_code: 'TestCompanyCode',
          mapped_code:  'TestMappedCode'
        )
        product_category = Resources::ProductCategory.new(category_code: 'TestCategoryCode')
        product_identifier = Resources::ProductIdentifier.new(
          name:   'TestName',
          values: 'TestValues'
        )
        product_master_parameters_list = Resources::ProductMasterParametersListV4.new(
          image:                   [image],
          supplier_mapping:        [supplier_mapping],
          ship_to_company_mapping: [ship_to_company_mapping],
          product_category:        [product_category],
          product_identifier:      [product_identifier]
        )
        product_master = Resources::ProductMasterV4.new(
          product_code:             'TestProductCode',
          bonded:                   true,
          brand:                    'TestBrand',
          business:                 'TestBusiness',
          category1:                'TestCategory1',
          category2:                'TestCategory2',
          client_product_status:    'TestClientProductStatus',
          colour:                   'TestColour',
          country_of_origin:        'PL',
          currency:                 'PLN',
          date_controlled:          true,
          ean:                      'TestEAN',
          gross_weight:             105,
          gross_weight_uom:         'TestGrossWeightUOM',
          group_identifier:         'TestGroupIdentifier',
          hazardous:                true,
          hts_code:                 'TestHTSCode',
          inward_processing:        true,
          lead_time:                103,
          lot_controlled:           true,
          moq:                      104,
          product_description:      'TestProductDescription',
          product_long_description: 'TestProductLongDescription',
          product_use:              'TestProductUse',
          qc_controlled:            true,
          qc_percentage:            101,
          secondary_currency_code:  'EUR',
          secondary_price:          104,
          serial_number_controlled: true,
          size:                     'TestSize',
          style_code:               'TestStyleCode',
          unit_price:               102,
          wet_bond:                 true
        )
        client = Client.new(api_key: 'ABC', live: true)
        product_master_request = Resources::ProductMasterV4Request.new(
          product_master: product_master,
          list:           product_master_parameters_list
        )

        response = client.load_product_master(product_master_request)

        expect(response.parsed_response).to eq({
          'CallStatus' => {
            'Success' => true,
            'Code'    => 0,
            'Message' => ''
          }
        }.to_json)
      end
    end
  end
end
