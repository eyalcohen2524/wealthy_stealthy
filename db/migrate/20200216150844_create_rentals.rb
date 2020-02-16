class CreateRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|
      t.integer :user_id
      t.integer :package_id
      t.datetime :rental_date

      t.timestamps
    end
  end
end
