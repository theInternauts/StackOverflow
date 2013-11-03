class Question < ActiveRecord::Base
  attr_accessible :title, :body
  has_many :votes, as: :votable
  has_many :answers
  belongs_to :user
end