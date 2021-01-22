class Project < ApplicationRecord
  has_many :materials
  validates :name, presence: true


  def update_total_cost
      self.materials.each do |material|
        total_material_cost = material.cost * material.quantity
      self.cost += total_material_cost
    end
  end


end
