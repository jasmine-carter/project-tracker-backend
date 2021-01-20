class MaterialSerializer < ActiveModel::Serializer
  attributes :id, :name, :cost, :quantity, :purchased
end
