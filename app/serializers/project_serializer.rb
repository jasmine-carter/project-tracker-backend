class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :cost, :completed, :description, :image
  has_many :materials
end
