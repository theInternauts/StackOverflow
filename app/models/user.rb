# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  email              :string(255)
#  username           :string(255)
#  password           :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  encrypted_password :string(128)
#  confirmation_token :string(128)
#  remember_token     :string(128)
#

class User < ActiveRecord::Base
  include Clearance::User
  attr_accessible :email, :password, :username
  has_many :questions
  has_many :answers
end
