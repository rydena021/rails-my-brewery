class AddColumnsToBreweries < ActiveRecord::Migration[5.0]
  def change
    add_column :breweries, :description, :string
    add_column :breweries, :location, :string
  end
end
