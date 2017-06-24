class AddAttributeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :property, :integer
  end
end
