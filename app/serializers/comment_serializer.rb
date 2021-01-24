class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :project_id
end
