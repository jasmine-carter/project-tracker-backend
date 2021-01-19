class AddDefaultValueToProjectCost < ActiveRecord::Migration[6.1]
  def change
    change_column :projects, :cost, :float, :default => 0.0

  end
end
