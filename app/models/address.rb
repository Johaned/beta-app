class Address
  include Mongoid::Document
  field :address, type: String
  field :postcode, type: String
  field :country, type: String

  belongs_to :artiste
end
