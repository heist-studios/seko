require 'spec_helper'
require './lib/seko'

module Seko
  RSpec.describe Client do
    describe '#load_sales_order_cancellation' do
      it 'makes request to SEKO API' do
        stub_const('Seko::Client::API_URL', 'https://test.service.com:8081/api/')
        stub_request(:post, "#{Seko::Client::API_URL}salesorders/v3/SOTest234/cancel")
          .with(
            headers: { 'Accept' => 'application/json' },
            query: { 'api_key' => 'ABC', 'reasonCode' => '001' }
          ).to_return(
          body: {
                  'CallStatus' => {
                    'Success' => true,
                    'Code'    => 0,
                    'Message' => ''
                  },
                  'GUID' => nil
                }.to_json
        )

        client   = Client.new(api_key: 'ABC', live: true)
        response = client.load_sales_order_cancellation(sales_order_number: 'SOTest234', reason_code: '001')

        expect(response.parsed_response).to eq({
          'CallStatus' => {
            'Success' => true,
            'Code'    => 0,
            'Message' => ''
          },
          'GUID' => nil
        }.to_json)
      end
    end
  end
end
