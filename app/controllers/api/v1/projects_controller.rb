class Api::V1::ProjectsController < ApplicationController


  def index
    @projects = Project.all
    render json: @projects
  end


  def create
    @project = Project.new(project_params)
    if @project.save
      render json: @project
    else
      render json: {error: 'Error creating your project'} #generate maybe more unique/specific error handling
    end
  end

  def show
    @project = Project.find(params[:id])
    render json: @project
  end


  def update

  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
  end


  private

  def project_params
    params.require(:project).permit(:name, :description, :completed, :image)
  end


end
