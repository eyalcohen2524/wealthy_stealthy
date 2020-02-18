class AddImageUrlToPackages < ActiveRecord::Migration[5.2]
  def change
    add_column :packages, :image_url, :string
  end
end
