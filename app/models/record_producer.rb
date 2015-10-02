class RecordProducer
  include Mongoid::Document
  field :name, type: String

  has_many :songs

  accepts_nested_attributes_for :songs
end
