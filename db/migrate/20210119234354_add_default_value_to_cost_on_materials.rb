class AddDefaultValueToCostOnMaterials < ActiveRecord::Migration[6.1]
  def change
    change_column :materials, :cost, :float, :default => 0.0
  end
end
