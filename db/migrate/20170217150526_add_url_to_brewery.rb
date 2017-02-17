class AddUrlToBrewery < ActiveRecord::Migration[5.0]
  def change
    add_column :breweries, :url, :string
  end
end
