class User < ActiveRecord::Base
  include Clearance::User
  attr_accessible :email, :password, :username
  has_many :questions
  has_many :answers
end
