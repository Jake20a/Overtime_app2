class PostPolicy < ApplicationPolicy

	def update?
		record.user_id == user.user_id || admin_types.include?(user.type)
	end
	
	def edit
		authorize @post
	end	

	def upate
		authorize @post

		if  @post.upate(post_params)
			redirect_to @post, notices: 'Your post was edited sucessfully'
		else
		  render :edit
		end  	
	end	
end	