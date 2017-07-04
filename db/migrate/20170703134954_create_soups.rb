class CreateSoups < ActiveRecord::Migration[5.1]
  def change
    create_table :soups do |t|
      t.string :name
      t.boolean :featured
      t.integer :category_id

      t.timestamps
    end
  end
end
