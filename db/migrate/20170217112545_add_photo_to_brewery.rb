class AddPhotoToBrewery < ActiveRecord::Migration[5.0]
  def change
    add_column :breweries, :photo, :string
  end
end
