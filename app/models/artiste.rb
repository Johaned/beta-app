class Artiste
  include Mongoid::Document
  field :full_name, type: String

  has_many :addresses
  belongs_to :album
end
