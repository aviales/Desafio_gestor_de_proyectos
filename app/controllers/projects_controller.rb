class ProjectsController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard
  
  def dashboard
    if params[:state].present?
      @projects = Project.where("state = ?", params[:state])
    else
      @projects = Project.all
    end
  end

  def new_project
  end

  def created
    @project = Project.create(name: params[:name], description: params[:description], start: params[:start], end: params[:end], state: params[:state])
  end
end
