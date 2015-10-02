class PhysicalDescription
  include ActiveAttr::Model
  include ActiveModel::Serializers::JSON
  
  attribute :size
  attribute :weight

end
