class AddSlugToTrees < ActiveRecord::Migration[7.0]
  def change
    add_column :trees, :slug, :string
    add_index :trees, :slug, unique: true
  end
end
