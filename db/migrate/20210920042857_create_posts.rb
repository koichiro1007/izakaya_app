class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :restaurant_name
      t.string :area
      t.string :url 
      t.text :notes

      t.timestamps
    end
  end
end
