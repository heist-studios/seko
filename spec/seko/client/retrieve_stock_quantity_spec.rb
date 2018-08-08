require 'spec_helper'
require './lib/seko'

module Seko
  RSpec.describe Client do
    describe '#retrieve_stock_quantity' do
      it 'makes request to SEKO API' do
        stub_const('Seko::Client::API_URL', 'https://test.service.com:8081/api/')
        stub_request(:get, "#{Seko::Client::API_URL}stock/v3/quantity")
          .with(
            headers: { 'Accept' => 'application/json' },
            query: {
              'api_key'      => 'ABC',
              'productCodes' => 'PMTest123,PMTest234',
              'dc'           => 'DCCL01'
            }
          ).to_return(
          body: {
                  'CallStatus' => {
                    'Success' => true,
                    'Code'    => 0,
                    'Message' => ''
                  },
                  'List' => {
                    'StockQuantityLineItem' => [
                      {
                        'ProductCode'  => 'PMTest123',
                        'DCCode'       => 'DCCL01',
                        'LocationType' => 'Available Stock',
                        'Quantity'     => 976
                      },
                      {
                        'ProductCode'  => 'PMTest234',
                        'DCCode'       => 'DCCL01',
                        'LocationType' => 'Available Stock',
                        'Quantity'     => 957
                      }
                    ]
                  }
                }.to_json
        )

        client = Client.new(api_key: 'ABC', live: true)
        response = client.retrieve_stock_quantity(product_codes: %w[PMTest123 PMTest234], dc_code: 'DCCL01')

        expect(response.parsed_response).to eq({
          'CallStatus' => {
            'Success' => true,
            'Code'    => 0,
            'Message' => ''
          },
          'List' => {
            'StockQuantityLineItem' => [
              {
                'ProductCode'  => 'PMTest123',
                'DCCode'       => 'DCCL01',
                'LocationType' => 'Available Stock',
                'Quantity'     => 976
              },
              {
                'ProductCode'  => 'PMTest234',
                'DCCode'       => 'DCCL01',
                'LocationType' => 'Available Stock',
                'Quantity'     => 957
              }
            ]
          }
        }.to_json)
      end
    end
  end
end
