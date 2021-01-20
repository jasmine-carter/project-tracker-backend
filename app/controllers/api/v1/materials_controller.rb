class Api::V1::MaterialsController < ApplicationController

  before_action :set_project

  def index
    @materials = @project.materials
      if @materials.count >= 1
        render json: @materials
      else
        render json: {error: "This project has no materials yet, add some?"}
  end

  def show
    @material = @project.materials.find_by(id: params[:id])
    render json: @material
  end


  def create
    @material = Material.new(material_params)
    if @material.save
      @project.update_total_cost
      render json: @material
    else
      render json: {error: 'Error creating your project''s material'}#create more specific error handling
    end
  end


  def destroy
    @material = @project.materials.find_by(id: params[:id])
    @material.destroy
  end

  private

  def set_project
    @project = Project.find(params[:project_id])

  end

  def material_params
      params.require(:material).permit(:name, :cost, :purchased, :quantity, :project_id)
  end

end
