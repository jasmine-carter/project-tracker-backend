class Project < ApplicationRecord
  has_many :materials
  validates :name, presence: true


  def update_total_cost
      self.materials.each do |material|
      self.cost += material.cost
    end
  end


end
