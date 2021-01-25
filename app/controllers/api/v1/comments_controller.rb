class Api::V1::CommentsController < ApplicationController

  before_action :set_project

  def index
    @comments = @project.comments
    render json: @comments
  end

  def create
    @comment = @project.comments.new(comment_params)
    @comment.save
    @project.save
    render json: @comment
  end

  def destroy
    @comment = @project.comments.find_by(id: params[:id])
    @comment.destroy
    @project.save
    render json: @project
  end

  def set_project
    @project = Project.find(params[:project_id])
  end

  def comment_params
    params.require(:comment).permit(:content, :project_id)
  end

end
