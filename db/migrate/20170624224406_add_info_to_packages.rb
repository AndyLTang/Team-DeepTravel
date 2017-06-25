class AddInfoToPackages < ActiveRecord::Migration[5.0]
  def change
    add_column :packages, :name, :string
    add_column :packages, :price, :float
    add_column :packages, :time, :float
  end
end
