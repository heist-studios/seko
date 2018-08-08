module Seko
  module Resources
    class DeliveryDetails
      include Virtus.model

      # OPTIONAL ATTRIBUTES:

      attribute :city, String
      # length: { maximum: 50 }

      attribute :contact_code, String
      # length: { maximum: 100 }

      attribute :country_code, String
      # length: { maximum: 20 }

      attribute :county, String
      # length: { maximum: 50 }

      attribute :email_address, String
      # length: { maximum: 150 }

      attribute :first_name, String
      # length: { maximum: 50 }

      attribute :last_name, String
      # length: { maximum: 50 }

      attribute :line1, String
      # length: { maximum: 100 }

      attribute :line2, String
      # length: { maximum: 100 }

      attribute :line3, String
      # length: { maximum: 100 }

      attribute :line4, String
      # length: { maximum: 100 }

      attribute :phone_number, String
      # length: { maximum: 20 }

      attribute :postcode_zip, String
      # length: { maximum: 20 }

      attribute :title, String
      # length: { maximum: 20 }
    end
  end
end
