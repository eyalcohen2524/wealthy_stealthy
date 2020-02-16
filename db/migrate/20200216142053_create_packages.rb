class CreatePackages < ActiveRecord::Migration[5.2]
  def change
    create_table :packages do |t|
      t.integer :price
      t.text :description
      t.text :content
      t.string :name
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
