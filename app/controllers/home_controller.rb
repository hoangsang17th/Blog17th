class HomeController < ApplicationController
  def index
    @posts = Post.all
  end
  def aboutme
    @author = "Phạm Hoàng Sang"
    render "about-me"
  end
end
