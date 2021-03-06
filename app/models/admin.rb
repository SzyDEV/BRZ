class Admin < ApplicationRecord
  authenticates_with_sorcery!
  validates_confirmation_of :password, message: "should match confirmation", if: :password
  validates :username, :email, :password, :password_confirmation, presence: true
end
