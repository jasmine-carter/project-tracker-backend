class Project < ApplicationRecord
  has_many :materials
  has_many :comments
  validates :name, presence: true


  def update_total_cost
    self.cost = 0.0
      self.materials.each do |material|
        total_material_cost = material.cost * material.quantity
      self.cost += total_material_cost
    end
    self.cost.ceil(2)
  end

  def delete_project_materials
    self.materials.each do |material|
      material.destroy
    end
  end

  def update_completion_status
    if self.completed != true
      self.completed = true
    else
      self.completed = false
    end
  end

  def delete_project_comments
    self.comments.each do |comment|
      comment.destroy
    end
  end

end
