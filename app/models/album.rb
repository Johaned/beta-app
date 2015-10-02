class Album
  include Mongoid::Document
  field :title, type: String

  has_one :artiste
  has_many :songs

  accepts_nested_attributes_for :artiste, :songs
end
