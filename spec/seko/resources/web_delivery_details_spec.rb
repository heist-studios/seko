require 'spec_helper'
require './lib/seko'

module Seko
  module Resources
    RSpec.describe WebDeliveryDetails do
      describe '#to_json_body' do
        it 'returns correct json' do
          web_delivery_details = WebDeliveryDetails.new(
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

          expect(web_delivery_details.to_json_body).to eq(
            {
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
            }.to_json
          )
        end
      end
    end
  end
end
