require 'spec_helper'
require './lib/seko'

module Seko
  RSpec.describe Client do
    describe '#load_sales_order' do
      it 'makes request to SEKO API' do
        stub_const('Seko::Client::API_URL', 'https://test.service.com:8081/')
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
                         'SalesInvoiceNumber'          => 'TestSalesInvoiceNumber'
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
          ultimate_destination:           'TestUltimateDestination',
          sales_invoice_number:           'TestSalesInvoiceNumber'
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
        order = Resources::SalesOrdersV4Request.new(
          billing_details:    billing_details,
          delivery_details:   delivery_details,
          forwarding_agent:   forwarding_agent,
          list:               [sales_order_line_item_v4],
          sales_order:        sales_order,
          sales_order_header: sales_order_header,
          ship_to_company:    ship_to_company
        )
        client = Client.new('ABC')
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
        client = Client.new('ABC')
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

    describe '#load_product_master_update' do
      it 'makes request to SEKO API' do
        stub_const('Seko::Client::API_URL', 'https://test.service.com:8081/api/')
        stub_request(:post, "#{Seko::Client::API_URL}products/v4/update")
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
        product_master_parameters_list = Resources::ProductMasterUpdateParametersListV4.new(
          image:                   [image],
          supplier_mapping:        [supplier_mapping],
          ship_to_company_mapping: [ship_to_company_mapping],
          product_category:        [product_category],
          product_identifier:      [product_identifier]
        )
        product_master = Resources::ProductMasterUpdateV4.new(
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
        client = Client.new('ABC')
        product_master_update_request = Resources::ProductMasterUpdateV4Request.new(
          product_master: product_master,
          list:           product_master_parameters_list
        )

        response = client.load_product_master(product_master_update_request)

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
