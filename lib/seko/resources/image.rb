module Seko
  module Resources
    class Image < Base
      include Virtus.model

      # OPTIONAL ATTRIBUTES:

      attribute :image_data,    String
      attribute :default_image, Boolean
    end
  end
end
