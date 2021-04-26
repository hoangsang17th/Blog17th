class HomeController < ApplicationController
  def index
    # @posts = Post.all
    @@per_page = 3
    @page = params.fetch(:page,0).to_i
    @posts = Post.order(created_at: :desc).offset(@page * @@per_page).limit(@@per_page)
    
  end
  def aboutme
    @author = "Phạm Hoàng Sang"
    render "about-me"
  end
end
