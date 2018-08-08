require 'httparty'
require 'virtus'

module Seko
  class Client
    API_URL      = 'https://ihub.supplystream.com:8081/api/'.freeze
    API_TEST_URL = 'https://ihubuat.supplystream.com:8081/api/'.freeze

    LOAD_PRODUCT_MASTER_PATH           = 'products/v4/submit'.freeze
    LOAD_PRODUCT_MASTER_UPDATE_PATH    = 'products/v4/update'.freeze
    LOAD_SALES_ORDER_PATH              = 'salesorders/v4/submit'.freeze
    LOAD_WEB_SALES_ORDER_PATH          = 'salesorders/v4/websubmit'.freeze
    RETRIEVE_STOCK_QUANTITY_PATH       = 'stock/v3/quantity'.freeze
    LOAD_SALES_ORDER_CANCELLATION_PATH = 'salesorders/v3/[SALES_ORDER_NUMBER]/cancel'.freeze

    def initialize(api_key:, live: false)
      @api_key = api_key
      @live    = live
    end

    # https://bigdigit.atlassian.net/wiki/spaces/IH2/pages/12386504/API+Load+Product+Masters
    def load_product_master(product)
      body = Serializers::Base.new(product).serialize
      post_request(path: LOAD_PRODUCT_MASTER_PATH, body: body)
    end

    # https://bigdigit.atlassian.net/wiki/spaces/IH2/pages/12386517/API+Load+Product+Master+Updates
    def load_product_master_update(product)
      body = Serializers::Base.new(product).serialize
      post_request(path: LOAD_PRODUCT_MASTER_UPDATE_PATH, body: body)
    end

    # https://bigdigit.atlassian.net/wiki/spaces/IH2/pages/12386597/API+Load+Sales+Orders
    def load_sales_order(order)
      body = Serializers::Base.new(order).serialize
      post_request(path: LOAD_SALES_ORDER_PATH, body: body)
    end

    # https://bigdigit.atlassian.net/wiki/spaces/IH2/pages/12386570/API+Load+Sales+Order+Cancellations
    def load_sales_order_cancellation(sales_order_number:, reason_code: nil)
      params = { api_key: api_key }
      params[:reasonCode] = reason_code unless reason_code.nil?

      HTTParty.post(
        api_url + LOAD_SALES_ORDER_CANCELLATION_PATH.gsub('[SALES_ORDER_NUMBER]', sales_order_number),
        headers: { 'Accept' => 'application/json' },
        query:   params
      )
    end

    # https://bigdigit.atlassian.net/wiki/spaces/IH2/pages/12386616/API+Load+Web+Sales+Orders
    def load_web_sales_order(order)
      body = Serializers::Base.new(order).serialize
      post_request(path: LOAD_WEB_SALES_ORDER_PATH, body: body)
    end

    # https://bigdigit.atlassian.net/wiki/spaces/IH2/pages/12386628/API+Retrieve+Stock+Quantity
    def retrieve_stock_quantity(product_codes:, dc_code: nil)
      params = { api_key: api_key, productCodes: product_codes.join(',') }
      params[:dc] = dc_code unless dc_code.nil?

      HTTParty.get(
        api_url + RETRIEVE_STOCK_QUANTITY_PATH,
        headers: { 'Accept' => 'application/json' },
        query:   params
      )
    end

    private

    attr_reader :api_key, :live

    def api_url
      live ? API_URL : API_TEST_URL
    end

    def post_request(path:, body:)
      HTTParty.post(
        api_url + path,
        headers: {
          'Content-Type' => 'application/json',
          'Accept'       => 'application/json'
        },
        query:   { api_key: api_key },
        body:    body
      )
    end
  end
end
