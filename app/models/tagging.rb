class Tagging

  include Mongoid::Document

  field :taggable_type, type: String

  embedded_in :tag, class_name: 'Tag', inverse_of: :taggings

  embeds_many :cows, class_name: 'RelationData', cascade_callbacks: true
  accepts_nested_attributes_for :cows

end
