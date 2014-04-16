class LoginPage < BasePage

  def initialize(session)
    super(session)
  end

  def mapNameToSelector(name)
    case name
      when 'username field'
        '#username'

      when 'password field'
        '#pasword'

      when 'log in button'
        '#login'

      else
        fail("There is no '#{name}' in the LoginPage object mapping definition!")
    end
  end

end