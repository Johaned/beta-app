class Dog
  include ActiveAttr::Model
  include ActiveModel::Serializers::JSON

  def self.association(association, klass, macro = nil)
    @@associations ||= {}
    @@associations[association] = { class: klass, macro: macro }
    attribute association, default: []
  end

  def self.reflect_on_association(association)
    data = { klass: @@associations[association][:class], macro: @@associations[association][:macro] }
    OpenStruct.new data
  end

  attribute :name
  attribute :breed

  association :fleas, Flea, :has_many
  association :physical_description, PhysicalDescription, :has_one

  def fleas_attributes=(collection)
    return unless collection.is_a? Hash
    flea_attributes_set = collection.values
    return unless flea_attributes_set.is_a? Array
    write_attribute :fleas, flea_attributes_set
  end

  def physical_description_attributes=(object_attributes)
    return unless object_attributes.is_a? Hash
    write_attribute :physical_description, object_attributes
  end

  def fleas=(collection)
    @attributes['fleas'] ||= []
    collection.each do |flea_attributes|
      @attributes['fleas'] << Flea.new(flea_attributes)
    end
  end

  def physical_description=(object_attributes)
    @attributes['physical_description'] = PhysicalDescription.new(object_attributes)
  end
end
