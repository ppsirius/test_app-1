class StaticController < ApplicationController
  def index
    @posts = Post.where(visible: true)
  end
end
