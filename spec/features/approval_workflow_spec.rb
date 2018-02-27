require 'rails_help'

describe 'navigate' do
  before do
    @admin_user = FactoryGirl.create(:admin_user)
    login_as(@admin_user, :scope => :user)
  end

  describe 'edit' do 
  	before do
  		@post = FactoryGirl.create(:post)
  		visit edit_post_path(@post)
	 end
  	
  	 it 'has a status that can  be edited on the form by an admin' do
  	   visit edit_post_path(@post)


  	   choose('post_ststaus_approved')
  	   click_on "Save"

  	   expected(@post.reload.status).to eq('approved')
  	 end 

  	 xit 'cannot be edit by a non admin' do
  	 	logot(:user)
  	 	user = FactoryGirl.create(:user)
  	 	login_as(user, :scope => :user)

  	 	 visit edit_post_path(@post)

  	 	 expect(page).to_not have_content('Approved')

  	 	end	
  	end  
end

