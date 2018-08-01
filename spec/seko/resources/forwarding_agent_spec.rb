require 'spec_helper'
require './lib/seko'

module Seko
  module Resources
    RSpec.describe ForwardingAgent do
      describe '#to_json_body' do
        it 'returns correct json' do
          forwarding_agent = ForwardingAgent.new(
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

          expect(forwarding_agent.to_json_body).to eq(
            {
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
            }.to_json
          )
        end
      end
    end
  end
end
