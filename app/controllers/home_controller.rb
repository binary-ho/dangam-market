class HomeController < ApplicationController
  def index
  end
  def post_form
  end
  def create_post
    post = Post.new
    post.item = params[:item]
    post.price = params[:price]
    post.address = params[:address]
    post.dong = params[:dong]
    post.save
    redirect_to '/'
  end
  def read_all_post
    @posts = Post.all
  end
  def read_post
    @post = Post.find(params[:post_id])
  end
  def delete_post
    post = Post.destroy(params[:post_id])
    redirect_to '/posts'
    # redirect_back(fallback_location: '/posts')
  end
end
