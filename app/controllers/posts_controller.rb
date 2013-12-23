class PostsController < ApplicationController

	respond_to :html,:json

	def new
	end

	def create
		@post = Post.create(params.require(:post).permit(:photo, :title, :description))
		@post.save
		respond_with @post
	end

	def show
		@post = Post.find_by(:id=>[params[:id]])
		render 'show'
	end
end