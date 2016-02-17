class Answer < ActiveRecord::Base
	belongs_to :user
	belongs_to :question
	validate :content, presence: true
end
