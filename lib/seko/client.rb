require 'httparty'
require 'virtus'

module Seko
  class Client
    API_URL = 'https://ihubuat.supplystream.com:8081/api/'.freeze

    LOAD_SALES_ORDER_PATH           = 'api/salesorders/v4/submit'.freeze
    LOAD_PRODUCT_MASTER_PATH        = 'products/v4/submit'.freeze
    LOAD_PRODUCT_MASTER_UPDATE_PATH = 'products/v4/update'.freeze

    def initialize(api_key)
      @api_key = api_key
    end

    def load_sales_order(order)
      body = order.to_json_body

      HTTParty.post(
        API_URL + LOAD_SALES_ORDER_PATH,
        headers: {
          'Content-Type' => 'application/json',
          'Accept'       => 'application/json'
        },
        query:   { api_key: api_key },
        body:    body
      )
    end

    def load_product_master(product)
      body = product.to_json_body

      HTTParty.post(API_URL + LOAD_PRODUCT_MASTER_PATH,
        headers: {
          'Content-Type' => 'application/json',
          'Accept'       => 'application/json'
        },
        query:   { api_key: api_key },
        body:    body)
    end

    def load_product_master_update(product)
      body = product.to_json_body

      HTTParty.post(API_URL + LOAD_PRODUCT_MASTER_UPDATE_PATH,
        headers: {
          'Content-Type' => 'application/json',
          'Accept'       => 'application/json'
        },
        query:   { api_key: api_key },
        body:    body)
    end

    private

    attr_reader :api_key
  end
end
