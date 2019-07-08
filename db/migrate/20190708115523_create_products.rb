class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.float :rate
      t.boolean :active, default: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
