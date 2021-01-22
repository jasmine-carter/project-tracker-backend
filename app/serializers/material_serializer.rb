class MaterialSerializer < ActiveModel::Serializer
  attributes :id, :name, :cost, :quantity, :purchased, :project_id
end
