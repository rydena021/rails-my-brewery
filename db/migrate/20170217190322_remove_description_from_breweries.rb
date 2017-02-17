class RemoveDescriptionFromBreweries < ActiveRecord::Migration[5.0]
  def change
    remove_column :breweries, :description, :string
  end
end
