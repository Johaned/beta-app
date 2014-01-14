class RelationData
  include Mongoid::Document
  field :association_id, type: String

  embedded_in :tagging, class_name: 'Tagging', inverse_of: :cows
end
