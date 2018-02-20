class PostsController < ApplicationController
	before_action :set_post, only: [:show]
	def index
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(params.require(:post).permit(:date, :rationale))

		@post.save

		redirect_to @post
		
	end

	def show
	@post = Post.find(params[:id])

	end
end