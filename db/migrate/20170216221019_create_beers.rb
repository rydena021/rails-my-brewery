class CreateBeers < ActiveRecord::Migration[5.0]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :description
      t.references :brewery, foreign_key: true
      t.references :style, foreign_key: true

      t.timestamps
    end
  end
end
