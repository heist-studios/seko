require 'spec_helper'
require './lib/seko'

module Seko
  module Resources
    RSpec.describe ProductMasterUpdateV4 do
      describe '#to_json_body' do
        it 'returns correct json' do
          product_master_update = ProductMasterUpdateV4.new(
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

          expect(product_master_update.to_json_body).to eq(
            {
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
            }.to_json
          )
        end
      end
    end
  end
end
