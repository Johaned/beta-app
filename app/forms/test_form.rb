class TestForm
  property :title
  validates :title, presence: true

  property :artist do
    property :full_name
    validates :full_name, presence: true
  end

  collection :songs do
    property :name
  end
end
