require 'httparty'
require 'virtus'

module Seko
  class Client
    API_URL = 'https://ihubuat.supplystream.com:8081/api/'.freeze

    LOAD_PRODUCT_MASTER_PATH           = 'products/v4/submit'.freeze
    LOAD_PRODUCT_MASTER_UPDATE_PATH    = 'products/v4/update'.freeze
    LOAD_SALES_ORDER_PATH              = 'salesorders/v4/submit'.freeze
    LOAD_WEB_SALES_ORDER_PATH          = 'salesorders/v4/websubmit'.freeze
    RETRIEVE_STOCK_QUANTITY_PATH       = 'stock/v3/quantity'.freeze
    LOAD_SALES_ORDER_CANCELLATION_PATH = 'salesorders/v3/[SALES_ORDER_NUMBER]/cancel'.freeze

    def initialize(api_key)
      @api_key = api_key
    end

    # https://bigdigit.atlassian.net/wiki/spaces/IH2/pages/12386597/API+Load+Sales+Orders
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

    # https://bigdigit.atlassian.net/wiki/spaces/IH2/pages/12386616/API+Load+Web+Sales+Orders
    def load_web_sales_order(order)
      body = order.to_json_body

      HTTParty.post(
        API_URL + LOAD_WEB_SALES_ORDER_PATH,
        headers: {
          'Content-Type' => 'application/json',
          'Accept'       => 'application/json'
        },
        query:   { api_key: api_key },
        body:    body
      )
    end

    # https://bigdigit.atlassian.net/wiki/spaces/IH2/pages/12386494/Load+Product+Masters
    def load_product_master(product)
      body = product.to_json_body

      HTTParty.post(
        API_URL + LOAD_PRODUCT_MASTER_PATH,
        headers: {
          'Content-Type' => 'application/json',
          'Accept'       => 'application/json'
        },
        query:   { api_key: api_key },
        body:    body
      )
    end

    # https://bigdigit.atlassian.net/wiki/spaces/IH2/pages/12386517/API+Load+Product+Master+Updates
    def load_product_master_update(product)
      body = product.to_json_body

      HTTParty.post(
        API_URL + LOAD_PRODUCT_MASTER_UPDATE_PATH,
        headers: {
          'Content-Type' => 'application/json',
          'Accept'       => 'application/json'
        },
        query:   { api_key: api_key },
        body:    body
      )
    end

    # https://bigdigit.atlassian.net/wiki/spaces/IH2/pages/12386628/API+Retrieve+Stock+Quantity
    def retrieve_stock_quantity(product_codes, dc_code = nil)
      params = {
        api_key:      api_key,
        productCodes: product_codes.join(',')
      }
      params[:dc] = dc_code unless dc_code.nil?

      HTTParty.get(
        API_URL + RETRIEVE_STOCK_QUANTITY_PATH,
        headers: { 'Accept' => 'application/json' },
        query:   params
      )
    end

    # https://bigdigit.atlassian.net/wiki/spaces/IH2/pages/12386570/API+Load+Sales+Order+Cancellations
    def load_sales_order_cancellation(order)
      HTTParty.post(
        API_URL + LOAD_SALES_ORDER_CANCELLATION_PATH.gsub('[SALES_ORDER_NUMBER]', order.sales_order_number),
        headers: { 'Accept' => 'application/json' },
        query:   { api_key: api_key }
      )
    end

    private

    attr_reader :api_key
  end
end
