class Tag
  include Mongoid::Document

  field :label, :type => String

  belongs_to :taggable, polymorphic: true

end
