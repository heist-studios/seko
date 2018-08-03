require 'spec_helper'
require './lib/seko'

module Seko
  module Resources
    RSpec.describe SalesOrdersRequestListV4 do
      describe '#to_json_body' do
        it 'returns correct json' do
          sales_order_line_item_v4     = SalesOrderLineItemV4.new(
            line_number:             1,
            quantity:                50,
            asn_number:              'TestASNNumber',
            channel:                 'TestChannel',
            country_code:            'TestCountryCode',
            currency_code:           'TestCurrencyCode',
            customs_value:           13,
            ean:                     'TestEAN',
            external_document_no:    'TestExternalDocumentNo',
            guid:                    'TestGUID',
            lot_no:                  'TestLotNo',
            order_line_message:      'TestOrderLineMessage',
            product_code:            'TestProductCode',
            secondary_currency_code: 'TestSecondaryCurrencyCode',
            secondary_unit_price:    11,
            secondary_vat:           12,
            unit_discount_price:     10,
            unit_price:              15,
            vat:                     4
          )
          sales_orders_request_list_v4 = SalesOrdersRequestListV4.new(
            sales_order_line_item: [sales_order_line_item_v4]
          )

          expect(sales_orders_request_list_v4.to_json_body).to eq(
            {
              'SalesOrderLineItem' => [
                {
                  'LineNumber'            => 1,
                  'Quantity'              => 50,
                  'ASNNumber'             => 'TestASNNumber',
                  'Channel'               => 'TestChannel',
                  'CountryCode'           => 'TestCountryCode',
                  'CurrencyCode'          => 'TestCurrencyCode',
                  'CustomsValue'          => 13.0,
                  'EAN'                   => 'TestEAN',
                  'ExternalDocumentNo'    => 'TestExternalDocumentNo',
                  'GUID'                  => 'TestGUID',
                  'LotNo'                 => 'TestLotNo',
                  'OrderLineMessage'      => 'TestOrderLineMessage',
                  'ProductCode'           => 'TestProductCode',
                  'SecondaryCurrencyCode' => 'TestSecondaryCurrencyCode',
                  'SecondaryUnitPrice'    => 11.0,
                  'SecondaryVAT'          => 12.0,
                  'UnitDiscountPrice'     => 10.0,
                  'UnitPrice'             => 15.0,
                  'VAT'                   => 4.0
                }
              ]
            }.to_json)
        end
      end
    end
  end
end
