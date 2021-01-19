class AddDefaultValueToCompleted < ActiveRecord::Migration[6.1]
  def change
    change_column :projects, :completed, :boolean, :default => false
  end
end
