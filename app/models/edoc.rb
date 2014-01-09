class Edoc
  include Mongoid::Document
  field :name, :type => String
  field :description, :type => String

  has_many :tags, as: :taggable

end
