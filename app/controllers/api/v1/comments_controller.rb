class Api::V1::CommentsController < ApplicationController

  before_action :set_project

  def index
    @comments = @projects.comments
      if @comments.count >= 1
        render json: @comments
      else
        render json: {error: "There are no comments here yet"}
      end
  end

  def create
    binding.pry
    @comment = @project.comments.find_by(id: params[:id])
    @comment.save
    @project.save
    render json: @project
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
