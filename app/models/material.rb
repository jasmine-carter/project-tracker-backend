class Material < ApplicationRecord
  belongs_to :project
  validates :name, presence: true


  def update_purchased_status
    if self.purchased != true
      self.purchased = true
    else
      self.purchased = false
    end
  end

end
