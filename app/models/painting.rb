class Painting
  include Mongoid::Document
  include Mongoid::Paperclip

  has_mongoid_attached_file :image
  field :name, :type => String

  before_create :default_name
  
  def default_name
    self.name ||= File.basename(image.original_filename, '.*').titleize if image
  end
end
