class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.float :cost
      t.string :description
      t.boolean :completed
      t.string :image

      t.timestamps
    end
  end
end
