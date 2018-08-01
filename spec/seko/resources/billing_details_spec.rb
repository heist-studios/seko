require 'spec_helper'
require './lib/seko'

module Seko
  module Resources
    RSpec.describe BillingDetails do
      describe '#to_json_body' do
        it 'returns correct json' do
          billing_details = BillingDetails.new(
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

          expect(billing_details.to_json_body).to eq(
            {
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
            }.to_json
          )
        end
      end
    end
  end
end
