class Edoc
  include Mongoid::Document
  field :name, :type => String
  field :description, :type => String

  has_many :tags, as: :taggable

  def tags_from_form=(raw_tags)
    #tags = []
    raw_tags.gsub(',').each do |label|
      self.tags << Tag.new(label: label)
    end
    binding.pry
  end

  def tags_from_form
    tags.to_a.map {|tag| tag.label}.join ','
  end

end
