class CreateController < ApplicationController
  def create
    # @todo=Todo.new(todo_params)
    # @todo.save
    render plain: params[:todo_create].inspect
  end

  # private def todo_params
  #   params.require(:todo_create).permit(:text, :project_id)
  # end

end
