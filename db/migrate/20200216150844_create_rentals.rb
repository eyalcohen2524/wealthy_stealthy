class CreateRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|
      t.references :user, foreign_key: true
      t.references :package, foreign_key: true
      t.datetime :rental_date

      t.timestamps
    end
  end
end
