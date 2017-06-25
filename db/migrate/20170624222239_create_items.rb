class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.float :time
      t.text :info
      t.references :package, foreign_key: true

      t.timestamps
    end
  end
end
