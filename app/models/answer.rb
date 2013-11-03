class Answer < ActiveRecord::Base
  attr_accessible :body
  has_many :votes, as: :votable
  belongs_to :question
  belongs_to :user
end