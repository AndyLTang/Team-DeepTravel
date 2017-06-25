class AddPackageToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :package, foreign_key: true
  end
end
