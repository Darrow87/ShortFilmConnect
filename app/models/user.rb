class User < ActiveRecord::Base
  validates :name, :email, :password, presence: true
  validates :password, :length => {:within => 6..40}
  has_secure_password
  has_and_belongs_to_many :projects
end
