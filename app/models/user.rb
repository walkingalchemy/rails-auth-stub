class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: true

  def full_name
    "#{self.first_name.capitalize} #{self.last_name.capitalize}"
  end
end
