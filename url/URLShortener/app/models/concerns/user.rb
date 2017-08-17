class User < ApplicationRecord
  validates :users, :email, null: false
end
