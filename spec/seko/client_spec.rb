require 'spec_helper'
require './lib/seko'

module Seko
  RSpec.describe Client do
    describe '#load_sales_order' do
      it 'makes request to SEKO API' do
        stub_const('Seko::Client::API_URL', 'https://test.service.com:8081/')
        stub_request(:post, 'https://test.service.com:8081/api/salesorders/v4/submit').
          with(
            headers: {
              'Content-Type' => 'application/json',
              'Accept'       => 'application/json'
            },
            query:   { "api_key" => 'ABC' },
            body:    {
                       "SalesOrder"       => {
                         "SalesInvoiceNumber"          => "GFH",
                         "DocumentIdentifier"          => "TestDocumentIdentifier",
                         "NIFNumber"                   => "1234567890",
                         "ShippingVAT"                 => 301,
                         "ShippingExVAT"               => 302,
                         "CustomsValueTotal"           => 200,
                         "DiscountPriceTotal"          => 100,
                         "GiftWrap"                    => true,
                         "GiftMessage"                 => "TestGiftMessage",
                         "ShippingTerm"                => "TestShippingTerm",
                         "ShippingTermLocation"        => "TestTermLocation",
                         "GiftMessageFrom"             => "TestMessageFrom",
                         "GiftMessageTo"               => "TestGiftMessageTo",
                         "ShippingTotal"               => 2,
                         "TaxTotal"                    => 3,
                         "SubTotal"                    => 5,
                         "OrderType"                   => "TestOrderType",
                         "CurrencyCode"                => "TestCurrencyCode",
                         "CarrierCustomerAccountNo"    => "TestCustomerAccountNo",
                         "CourierName"                 => "TestCourierName",
                         "CourierService"              => "TestCourierService",
                         "DeliveryAddressLocationType" => "TestDeliveryAddressLocationType",
                         "DoNotPushToDC"               => true,
                         "GUID"                        => "TestGUID",
                         "LocationType"                => "TestLocationType",
                         "Notes"                       => "TestNotes",
                         "NotificationMethod"          => "TestNotificationMethod",
                         "OnHold"                      => true,
                         "SalesOrderDate"              => "2017-01-01T12:00:00.656Z",
                         "SalesOrderNumber"            => "TestSalesOrderNumber",
                         "SalesOrderReference"         => "TestSalesOrderReference",
                         "ScheduledShipDate"           => "2017-12-31T12:00:00.656Z",
                         "ShipmentTerms"               => "TestShipmentTerms",
                         "SpecialInstructions"         => "TestSpecialInstructions",
                         "UltimateDestination"         => "TestUltimateDestination"
                       },
                       "SalesOrderHeader" => {
                         "DCCode" => "TestDCCode"
                       },
                       "ShipToCompany"    => {
                         "BranchCode"            => "TestBranchCode",
                         "CompanyCategory"       => "TestCompanyCategory",
                         "CompanyCode"           => "TestCompanyCode",
                         "CompanyDescription"    => "TestCompanyDescription",
                         "LookupDeliveryAddress" => true
                       },
                       "DeliveryDetails"  => {
                         "City"         => "DD_TestCity",
                         "ContactCode"  => "DD_TestContactCode",
                         "CountryCode"  => "DD_TestCountryCode",
                         "County"       => "DD_TestCounty",
                         "EmailAddress" => "DD_TestEmailAddress",
                         "FirstName"    => "DD_TestFirstName",
                         "LastName"     => "DD_TestLastName",
                         "Line1"        => "DD_TestLine1",
                         "Line2"        => "DD_TestLine2",
                         "Line3"        => "DD_TestLine3",
                         "Line4"        => "DD_TestLine4",
                         "PhoneNumber"  => "DD_TestPhoneNumber",
                         "PostcodeZip"  => "DD_TestPostcodeZip",
                         "Title"        => "DD_TestTitle"
                       },
                       "BillingDetails"   => {
                         "City"         => "BD_TestCity",
                         "ContactCode"  => "BD_TestContactCode",
                         "CountryCode"  => "BD_TestCountryCode",
                         "County"       => "BD_TestCounty",
                         "EmailAddress" => "BD_TestEmailAddress",
                         "FirstName"    => "BD_TestFirstName",
                         "LastName"     => "BD_TestLastName",
                         "Line1"        => "BD_TestLine1",
                         "Line2"        => "BD_TestLine2",
                         "Line3"        => "BD_TestLine3",
                         "Line4"        => "BD_TestLine4",
                         "PhoneNumber"  => "BD_TestPhoneNumber",
                         "PostcodeZip"  => "BD_TestPostcodeZip",
                         "Title"        => "BD_TestTitle"
                       },
                       "ForwardingAgent"  => {
                         "City"               => "FA_TestCity",
                         "CompanyCode"        => "FA_TestCompanyCode",
                         "CompanyDescription" => "FA_TestCompanyDescription",
                         "ContactCode"        => "FA_TestContactCode",
                         "CountryCode"        => "FA_TestCountryCode",
                         "County"             => "FA_TestCounty",
                         "EmailAddress"       => "FA_TestEmailAddress",
                         "FirstName"          => "FA_TestFirstName",
                         "LastName"           => "FA_TestLastName",
                         "Line1"              => "FA_TestLine1",
                         "Line2"              => "FA_TestLine2",
                         "Line3"              => "FA_TestLine3",
                         "Line4"              => "FA_TestLine4",
                         "PhoneNumber"        => "FA_TestPhoneNumber",
                         "PostcodeZip"        => "FA_TestPostcodeZip",
                         "Title"              => "FA_TestTitle"
                       },
                       "List"             => {
                         "SalesOrderLineItem" => [
                           {
                             "UnitDiscountPrice"     => 10,
                             "OrderLineMessage"      => "TestOrderLineMessage",
                             "SecondaryCurrencyCode" => "TestSecondaryCurrencyCode",
                             "SecondaryUnitPrice"    => 11,
                             "SecondaryVAT"          => 12,
                             "ASNNumber"             => "TestASNNumber",
                             "CustomsValue"          => 13,
                             "Channel"               => "TestChannel",
                             "CountryCode"           => "TestCountryCode",
                             "CurrencyCode"          => "TestCurrencyCode",
                             "EAN"                   => "TestEAN",
                             "ExternalDocumentNo"    => "TestExternalDocumentNo",
                             "GUID"                  => "TestGUID",
                             "LineNumber"            => 1,
                             "LotNo"                 => "TestLotNo",
                             "ProductCode"           => "TestProductCode",
                             "Quantity"              => 50,
                             "UnitPrice"             => 15,
                             "VAT"                   => 4
                           }
                         ]
                       }
                     }.to_json
          ).
          to_return(
            body: {
                    "CallStatus" => {
                      "Success" => true,
                      "Code"    => 0,
                      "Message" => ""
                    },
                    "GUID"       => "3b4b1773-30f1-40f6-aaae-ea675ded52e4"
                  }.to_json
          )


        order  = Resources::SalesOrdersV4Request.new
        client = Client.new('ABC')

        expect(client.load_sales_order(order)).to eq({
          "CallStatus" => {
            "Success" => true,
            "Code"    => 0,
            "Message" => ""
          },
          "GUID"       => "3b4b1773-30f1-40f6-aaae-ea675ded52e4"
        }.to_json
        )
      end
    end
  end
end
