class WelcomeController < ApplicationController
  def index

  end

  def test_form
    a = Album.new
    a.build_artiste
    @album = AlbumForm.new a
  end

  def dog_page
    params = {
      name: 'lulu',
      breed: 'mixed breed',
      fleas_attributes: {
        0 => {
          name: 'messi',
          color: 'brown',
          _destroy: ''
        },
        1 => {
          name: 'rodolfo',
          color: 'black',
          _destroy: ''
        }
      },
      physical_description_attributes: {
        size: 'small',
        weight: '1g'
      }
    }
    @dog = Dog.new params
  end

  def create_album
    dog = Dog.new params[:dog]
    serialized_dog = dog.serializable_hash include: ['fleas', 'physical_description']
    Dog.new serialized_dog
    redirect_to test_form_path
  end
end
