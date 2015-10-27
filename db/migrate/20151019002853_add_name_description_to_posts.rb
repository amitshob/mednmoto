class AddNameDescriptionToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :name, :string
    add_column :posts, :description, :string
  end
end
