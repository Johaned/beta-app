module Mongoid
  module Document
    ARFakeColumn = Struct.new(:type, :limit, :number?)

    def column_for_attribute(attribute_name)
      if fields[attribute_name.to_s].options[:type] == Boolean
        ARFakeColumn.new(:boolean, 0)
      else
        ARFakeColumn.new(:string, 0)
      end
    end
  end
end
