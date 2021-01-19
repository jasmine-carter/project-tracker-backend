class CreateMaterials < ActiveRecord::Migration[6.1]
  def change
    create_table :materials do |t|
      t.string :name
      t.integer :quantity
      t.float :cost
      t.boolean :purchased
      t.integer :project_id

      t.timestamps
    end
  end
end
