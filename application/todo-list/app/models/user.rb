class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true

  has_many :lists

  def will_authenticate?(password)
    self.password == password
  end

  def logout!()
    puts "INFO: #{username} logs out."
  end
end