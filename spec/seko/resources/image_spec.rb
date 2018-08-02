require 'spec_helper'
require './lib/seko'

module Seko
  module Resources
    RSpec.describe Image do
      describe '#to_json_body' do
        it 'returns correct json' do
          image = Image.new(
            image_data:    'TestImageData',
            default_image: true
          )

          expect(image.to_json_body).to eq(
            {
              'ImageData'    => 'TestImageData',
              'DefaultImage' => true
            }.to_json
          )
        end
      end
    end
  end
end
