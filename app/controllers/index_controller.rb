class IndexController < ApplicationController
  def index
    @projects=Project.all
    @projects_titles=Project.all.map{|u| [ u.title, u.id ] }
  end
  def create
    @todo=Todo.new(todo_params)
    @todo.save
    redirect_to action: "index"
    # render plain: params[:todo_create].inspect
  end

  private def todo_params
    params.require(:todo_create).permit(:text, :project_id)
  end

end
