class AddDefaultValueToPurchased < ActiveRecord::Migration[6.1]
  def change
    change_column :materials, :purchased, :boolean, :default => false
  end
end
