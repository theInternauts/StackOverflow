# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  body        :string(255)
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :integer
#

class Answer < ActiveRecord::Base
  attr_accessible :body
  has_many :votes, as: :votable, dependent: :destroy
  belongs_to :question
  belongs_to :user
end
