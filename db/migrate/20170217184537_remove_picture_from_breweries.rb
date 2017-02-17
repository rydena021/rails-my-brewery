class RemovePictureFromBreweries < ActiveRecord::Migration[5.0]
  def change
    remove_column :breweries, :picture, :string
  end
end
