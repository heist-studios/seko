module Seko
  module Resources
    class Image
      include Virtus.model

      # OPTIONAL ATTRIBUTES:

      attribute :image_data,    String
      attribute :default_image, Boolean
    end
  end
end
