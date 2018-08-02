require 'spec_helper'
require './lib/seko'

module Seko
  module Resources
    RSpec.describe SalesOrderV4 do
      describe '#to_json_body' do
        it 'returns correct json' do
          sales_order_v4 = SalesOrderV4.new(
            sales_order_number: 'TestSalesOrderNumber',
            carrier_customer_account_no: 'TestCustomerAccountNo',
            courier_name: 'TestCourierName',
            courier_service: 'TestCourierService',
            courier_shop_id: 'TestCourierShopId',
            currency_code: 'TestCurrencyCode',
            customs_value_total: 200,
            delivery_address_location_type: 'TestDeliveryAddressLocationType',
            discount_price_total: 100,
            document_identifier: 'TestDocumentIdentifier',
            do_not_push_to_dc: true,
            gift_message: 'TestGiftMessage',
            gift_message_from: 'TestMessageFrom',
            gift_message_to: 'TestGiftMessageTo',
            gift_wrap: true,
            guid: 'TestGUID',
            location_type: 'TestLocationType',
            nif_number: '1234567890',
            notes: 'TestNotes',
            notification_method: 'TestNotificationMethod',
            on_hold: true,
            order_type: 'TestOrderType',
            sales_order_date: '2017-01-01T12:00:00.656Z',
            sales_order_reference: 'TestSalesOrderReference',
            scheduled_ship_date: '2017-12-31T12:00:00.656Z',
            shipment_terms: 'TestShipmentTerms',
            shipping_ex_vat: 302,
            shipping_term: 'TestShippingTerm',
            shipping_term_location: 'TestShippingTermLocation',
            shipping_total: 2,
            shipping_vat: 301,
            special_instructions: 'TestSpecialInstructions',
            sub_total: 5,
            tax_total: 3,
            ultimate_destination: 'TestUltimateDestination',
            sales_invoice_number: 'TestSalesInvoiceNumber'
          )

          expect(sales_order_v4.to_json_body).to eq(
            {
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
            }.to_json
          )
        end
      end
    end
  end
end
