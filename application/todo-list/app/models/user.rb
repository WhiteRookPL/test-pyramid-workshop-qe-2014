class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true

  @authenticated = false

  def authenticate!(password)
    if self.password == password
      @authenticated = true
    end
  end

  def is_authenticated?()
    @authenticated
  end
end