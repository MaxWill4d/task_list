class IndexController < ApplicationController
  def index
    @projects=Project.all
    @todos = Project.joins(:todos)
  end
end
