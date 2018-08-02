require 'spec_helper'
require './lib/seko'

module Seko
  module Resources
    RSpec.describe ProductCategory do
      describe '#to_json_body' do
        it 'returns correct json' do
          product_category = ProductCategory.new(category_code: 'TestCategoryCode')

          expect(product_category.to_json_body).to eq({ 'CategoryCode' => 'TestCategoryCode' }.to_json)
        end
      end
    end
  end
end
