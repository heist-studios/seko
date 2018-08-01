module Seko
  module Resources
    class DeliveryDetails < Base
      include Virtus.model

      # OPTIONAL ATTRIBUTES:

      attribute :city, String
      # validates :city, length: { maximum: 50 }

      attribute :contact_code, String
      # validates :contact_code, length: { maximum: 100 }

      attribute :country_code, String
      # validates :country_code, length: { maximum: 20 }

      attribute :county, String
      # validates :county, length: { maximum: 50 }

      attribute :email_address, String
      # validates :email_address, length: { maximum: 150 }

      attribute :first_name, String
      # validates :first_name, length: { maximum: 50 }

      attribute :last_name, String
      # validates :last_name, length: { maximum: 50 }

      attribute :line1, String
      # validates :line1, length: { maximum: 100 }

      attribute :line2, String
      # validates :line2, length: { maximum: 100 }

      attribute :line3, String
      # validates :line3, length: { maximum: 100 }

      attribute :line4, String
      # validates :line4, length: { maximum: 100 }

      attribute :phone_number, String
      # validates :phone_number, length: { maximum: 20 }

      attribute :postcode_zip, String
      # validates :postcode_zip, length: { maximum: 20 }

      attribute :title, String
      # validates :title, length: { maximum: 20 }
    end
  end
end
