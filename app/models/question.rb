# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Question < ActiveRecord::Base
  attr_accessible :title, :body
  has_many :votes, as: :votable, dependent: :destroy
  has_many :answers, dependent: :destroy
  # accepts_nested_attributes_for :answers
  belongs_to :user
end
