class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.float :price
      t.text :description
      t.integer :bedrooms
      t.string :address
      t.datetime :start_date
      t.datetime :end_date
      t.integer :user_id

      t.timestamps

    end
  end
end
