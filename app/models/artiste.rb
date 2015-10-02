class Artiste
  include Mongoid::Document
  field :full_name, type: String

  has_many :addresses
  belongs_to :album

  accepts_nested_attributes_for :addresses
end
