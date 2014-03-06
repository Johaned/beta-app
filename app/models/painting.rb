class Painting
  include Mongoid::Paperclip
  has_mongoid_attached_file :image
end