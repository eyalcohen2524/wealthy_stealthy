class ChangeImageUrlInUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :image_url, :string, :default => ""
  end
end
