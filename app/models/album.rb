class Album
  include Mongoid::Document
  field :title, type: String

  has_one :artiste
  has_many :songs
end
