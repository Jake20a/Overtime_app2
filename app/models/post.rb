class Post < ActiveRecord::Base
	belongs_to :user, optional; true
	validates_presence_of :date, :rationale
end