class Question < ActiveRecord::Base
	belongs_to :user
	has_many :answers, dependent: :destroy
	validate :ques, uniqueness: true
	validate :ques, presence: true
end
