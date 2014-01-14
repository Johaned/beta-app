class Tag
  include Mongoid::Document

  field :label, :type => String

  #belongs_to :taggable, polymorphic: true

  embeds_many :taggings, class_name: 'Tagging', cascade_callbacks: true
  accepts_nested_attributes_for :taggings
end
