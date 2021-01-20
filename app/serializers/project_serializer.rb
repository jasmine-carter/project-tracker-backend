class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :cost, :completed, :description
  has_many :materials
end
