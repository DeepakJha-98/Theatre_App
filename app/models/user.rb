class User < ApplicationRecord

  validates :email, presence: true, uniqueness:true

  has_secure_password
  validates :password, length: { minimum: 6 }, allow_blank: true
end
