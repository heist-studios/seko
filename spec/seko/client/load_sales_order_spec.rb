require 'spec_helper'
require './lib/seko'

module Seko
  RSpec.describe Client do
    describe '#load_sales_order' do
      it 'makes request to SEKO API' do
        stub_const('Seko::Client::API_URL', 'https://test.service.com:8081/api/')
        stub_request(:post, 'https://test.service.com:8081/api/salesorders/v4/submit')
          .with(
            headers: {
              'Content-Type' => 'application/json',
              'Accept'       => 'application/json'
            },
            query:   { 'api_key' => 'ABC' },
            body:    {
                       'BillingDetails' => {
                         'City'         => 'BD_TestCity',
                         'ContactCode'  => 'BD_TestContactCode',
                         'CountryCode'  => 'BD_TestCountryCode',
                         'County'       => 'BD_TestCounty',
                         'EmailAddress' => 'BD_TestEmailAddress',
                         'FirstName'    => 'BD_TestFirstName',
                         'LastName'     => 'BD_TestLastName',
                         'Line1'        => 'BD_TestLine1',
                         'Line2'        => 'BD_TestLine2',
                         'Line3'        => 'BD_TestLine3',
                         'Line4'        => 'BD_TestLine4',
                         'PhoneNumber'  => 'BD_TestPhoneNumber',
                         'PostcodeZip'  => 'BD_TestPostcodeZip',
                         'Title'        => 'BD_TestTitle'
                       },
                       'DeliveryDetails' => {
                         'City'         => 'DD_TestCity',
                         'ContactCode'  => 'DD_TestContactCode',
                         'CountryCode'  => 'DD_TestCountryCode',
                         'County'       => 'DD_TestCounty',
                         'EmailAddress' => 'DD_TestEmailAddress',
                         'FirstName'    => 'DD_TestFirstName',
                         'LastName'     => 'DD_TestLastName',
                         'Line1'        => 'DD_TestLine1',
                         'Line2'        => 'DD_TestLine2',
                         'Line3'        => 'DD_TestLine3',
                         'Line4'        => 'DD_TestLine4',
                         'PhoneNumber'  => 'DD_TestPhoneNumber',
                         'PostcodeZip'  => 'DD_TestPostcodeZip',
                         'Title'        => 'DD_TestTitle'
                       },
                       'ForwardingAgent' => {
                         'City'               => 'FA_TestCity',
                         'CompanyCode'        => 'FA_TestCompanyCode',
                         'CompanyDescription' => 'FA_TestCompanyDescription',
                         'ContactCode'        => 'FA_TestContactCode',
                         'CountryCode'        => 'FA_TestCountryCode',
                         'County'             => 'FA_TestCounty',
                         'EmailAddress'       => 'FA_TestEmailAddress',
                         'FirstName'          => 'FA_TestFirstName',
                         'LastName'           => 'FA_TestLastName',
                         'Line1'              => 'FA_TestLine1',
                         'Line2'              => 'FA_TestLine2',
                         'Line3'              => 'FA_TestLine3',
                         'Line4'              => 'FA_TestLine4',
                         'PhoneNumber'        => 'FA_TestPhoneNumber',
                         'PostcodeZip'        => 'FA_TestPostcodeZip',
                         'Title'              => 'FA_TestTitle'
                       },
                       'List' => {
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
                           },
                           {
                             'LineNumber'            => 2,
                             'Quantity'              => 1,
                             'ASNNumber'             => 'TestASNNumber2',
                             'Channel'               => 'TestChannel2',
                             'CountryCode'           => 'TestCountryCode2',
                             'CurrencyCode'          => 'TestCurrencyCode2',
                             'CustomsValue'          => 113.0,
                             'EAN'                   => 'TestEAN2',
                             'ExternalDocumentNo'    => 'TestExternalDocumentNo2',
                             'GUID'                  => 'TestGUID2',
                             'LotNo'                 => 'TestLotNo2',
                             'OrderLineMessage'      => 'TestOrderLineMessage2',
                             'ProductCode'           => 'TestProductCode2',
                             'SecondaryCurrencyCode' => 'TestSecondaryCurrencyCode2',
                             'SecondaryUnitPrice'    => 111.0,
                             'SecondaryVAT'          => 112.0,
                             'UnitDiscountPrice'     => 110.0,
                             'UnitPrice'             => 115.0,
                             'VAT'                   => 104.0
                           }
                         ]
                       },
                       'SalesOrder' => {
                         'SalesOrderNumber'            => 'TestSalesOrderNumber',
                         'CarrierCustomerAccountNo'    => 'TestCustomerAccountNo',
                         'CourierName'                 => 'TestCourierName',
                         'CourierService'              => 'TestCourierService',
                         'CourierShopId'               => 'TestCourierShopId',
                         'CurrencyCode'                => 'TestCurrencyCode',
                         'CustomsValueTotal'           => 200.0,
                         'DeliveryAddressLocationType' => 'TestDeliveryAddressLocationType',
                         'DiscountPriceTotal'          => 100.0,
                         'DocumentIdentifier'          => 'TestDocumentIdentifier',
                         'DoNotPushToDC'               => true,
                         'GiftMessage'                 => 'TestGiftMessage',
                         'GiftMessageFrom'             => 'TestMessageFrom',
                         'GiftMessageTo'               => 'TestGiftMessageTo',
                         'GiftWrap'                    => true,
                         'GUID'                        => 'TestGUID',
                         'LocationType'                => 'TestLocationType',
                         'NIFNumber'                   => '1234567890',
                         'Notes'                       => 'TestNotes',
                         'NotificationMethod'          => 'TestNotificationMethod',
                         'OnHold'                      => true,
                         'OrderType'                   => 'TestOrderType',
                         'SalesInvoiceNumber'          => 'TestSalesInvoiceNumber',
                         'SalesOrderDate'              => '2017-01-01T12:00:00.656Z',
                         'SalesOrderReference'         => 'TestSalesOrderReference',
                         'ScheduledShipDate'           => '2017-12-31T12:00:00.656Z',
                         'ShipmentTerms'               => 'TestShipmentTerms',
                         'ShippingExVAT'               => 302.0,
                         'ShippingTerm'                => 'TestShippingTerm',
                         'ShippingTermLocation'        => 'TestShippingTermLocation',
                         'ShippingTotal'               => 2.0,
                         'ShippingVAT'                 => 301.0,
                         'SpecialInstructions'         => 'TestSpecialInstructions',
                         'SubTotal'                    => 5.0,
                         'TaxTotal'                    => 3.0,
                         'UltimateDestination'         => 'TestUltimateDestination',
                       },
                       'SalesOrderHeader' => {
                         'DCCode' => 'TestDCCode'
                       },
                       'ShipToCompany' => {
                         'CompanyCode'           => 'TestCompanyCode',
                         'CompanyDescription'    => 'TestCompanyDescription',
                         'BranchCode'            => 'TestBranchCode',
                         'CompanyCategory'       => 'TestCompanyCategory',
                         'LookupDeliveryAddress' => true
                       }
                     }.to_json
          )
          .to_return(
            body: {
                    'CallStatus' => {
                      'Success' => true,
                      'Code'    => 0,
                      'Message' => ''
                    },
                    'GUID' => '3b4b1773-30f1-40f6-aaae-ea675ded52e4'
                  }.to_json
          )

        sales_order = Resources::SalesOrderV4.new(
          sales_order_number:             'TestSalesOrderNumber',
          carrier_customer_account_no:    'TestCustomerAccountNo',
          courier_name:                   'TestCourierName',
          courier_service:                'TestCourierService',
          courier_shop_id:                'TestCourierShopId',
          currency_code:                  'TestCurrencyCode',
          customs_value_total:            200,
          delivery_address_location_type: 'TestDeliveryAddressLocationType',
          discount_price_total:           100,
          document_identifier:            'TestDocumentIdentifier',
          do_not_push_to_dc:              true,
          gift_message:                   'TestGiftMessage',
          gift_message_from:              'TestMessageFrom',
          gift_message_to:                'TestGiftMessageTo',
          gift_wrap:                      true,
          guid:                           'TestGUID',
          location_type:                  'TestLocationType',
          nif_number:                     '1234567890',
          notes:                          'TestNotes',
          notification_method:            'TestNotificationMethod',
          on_hold:                        true,
          order_type:                     'TestOrderType',
          sales_invoice_number:           'TestSalesInvoiceNumber',
          sales_order_date:               '2017-01-01T12:00:00.656Z',
          sales_order_reference:          'TestSalesOrderReference',
          scheduled_ship_date:            '2017-12-31T12:00:00.656Z',
          shipment_terms:                 'TestShipmentTerms',
          shipping_ex_vat:                302,
          shipping_term:                  'TestShippingTerm',
          shipping_term_location:         'TestShippingTermLocation',
          shipping_total:                 2,
          shipping_vat:                   301,
          special_instructions:           'TestSpecialInstructions',
          sub_total:                      5,
          tax_total:                      3,
          ultimate_destination:           'TestUltimateDestination'
        )
        sales_order_header = Resources::SalesOrderHeader.new(dc_code: 'TestDCCode')
        ship_to_company = Resources::ShipToCompany.new(
          company_code:            'TestCompanyCode',
          company_description:     'TestCompanyDescription',
          branch_code:             'TestBranchCode',
          company_category:        'TestCompanyCategory',
          lookup_delivery_address: true
        )
        delivery_details = Resources::DeliveryDetails.new(
          city:          'DD_TestCity',
          contact_code:  'DD_TestContactCode',
          country_code:  'DD_TestCountryCode',
          county:        'DD_TestCounty',
          email_address: 'DD_TestEmailAddress',
          first_name:    'DD_TestFirstName',
          last_name:     'DD_TestLastName',
          line1:         'DD_TestLine1',
          line2:         'DD_TestLine2',
          line3:         'DD_TestLine3',
          line4:         'DD_TestLine4',
          phone_number:  'DD_TestPhoneNumber',
          postcode_zip:  'DD_TestPostcodeZip',
          title:         'DD_TestTitle'
        )
        billing_details = Resources::BillingDetails.new(
          city:          'BD_TestCity',
          contact_code:  'BD_TestContactCode',
          country_code:  'BD_TestCountryCode',
          county:        'BD_TestCounty',
          email_address: 'BD_TestEmailAddress',
          first_name:    'BD_TestFirstName',
          last_name:     'BD_TestLastName',
          line1:         'BD_TestLine1',
          line2:         'BD_TestLine2',
          line3:         'BD_TestLine3',
          line4:         'BD_TestLine4',
          phone_number:  'BD_TestPhoneNumber',
          postcode_zip:  'BD_TestPostcodeZip',
          title:         'BD_TestTitle'
        )
        forwarding_agent = Resources::ForwardingAgent.new(
          city:                'FA_TestCity',
          company_code:        'FA_TestCompanyCode',
          company_description: 'FA_TestCompanyDescription',
          contact_code:        'FA_TestContactCode',
          country_code:        'FA_TestCountryCode',
          county:              'FA_TestCounty',
          email_address:       'FA_TestEmailAddress',
          first_name:          'FA_TestFirstName',
          last_name:           'FA_TestLastName',
          line1:               'FA_TestLine1',
          line2:               'FA_TestLine2',
          line3:               'FA_TestLine3',
          line4:               'FA_TestLine4',
          phone_number:        'FA_TestPhoneNumber',
          postcode_zip:        'FA_TestPostcodeZip',
          title:               'FA_TestTitle'
        )
        sales_order_line_item_v4 = Resources::SalesOrderLineItemV4.new(
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
        sales_order_line_item_v4_2 = Resources::SalesOrderLineItemV4.new(
          line_number:             2,
          quantity:                1,
          asn_number:              'TestASNNumber2',
          channel:                 'TestChannel2',
          country_code:            'TestCountryCode2',
          currency_code:           'TestCurrencyCode2',
          customs_value:           113,
          ean:                     'TestEAN2',
          external_document_no:    'TestExternalDocumentNo2',
          guid:                    'TestGUID2',
          lot_no:                  'TestLotNo2',
          order_line_message:      'TestOrderLineMessage2',
          product_code:            'TestProductCode2',
          secondary_currency_code: 'TestSecondaryCurrencyCode2',
          secondary_unit_price:    111,
          secondary_vat:           112,
          unit_discount_price:     110,
          unit_price:              115,
          vat:                     104
        )
        sales_orders_request_list_v4 = Lists::SalesOrdersRequestListV4.new(
          sales_order_line_item: [sales_order_line_item_v4, sales_order_line_item_v4_2]
        )
        order = Requests::SalesOrdersV4Request.new(
          billing_details:    billing_details,
          delivery_details:   delivery_details,
          forwarding_agent:   forwarding_agent,
          list:               sales_orders_request_list_v4,
          sales_order:        sales_order,
          sales_order_header: sales_order_header,
          ship_to_company:    ship_to_company
        )
        client = Client.new(api_key: 'ABC', live: true)
        response = client.load_sales_order(order)

        expect(response.parsed_response).to eq({
          'CallStatus' => {
            'Success' => true,
            'Code'    => 0,
            'Message' => ''
          },
          'GUID' => '3b4b1773-30f1-40f6-aaae-ea675ded52e4'
        }.to_json)
      end
    end
  end
end
