class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :img
      t.string :location
      t.string :title
      t.string :description
      t.float :star
      t.float :price
      t.belongs_to :user
      
      t.timestamps
    end
  end
end
