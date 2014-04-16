class BasePage

  def initialize(session)
    @session = session

    if ENV['BASE_URL'].nil?
      @root = 'http://localhost:12345/'
    else
      @root = ENV['BASE_URL']
    end
  end

  def getSession()
    @session
  end

  def visit()
    @session.visit @root
  end

  def mapNameToSelector(name)
    fail('Mapping name to selector in the BasePage!')
  end

  def go(pageName)
    fail('Redirecting in the BasePage!')
  end

  def findElement(name)
    @session.find(mapNameToSelector(name))
  end

  def type(text, where)
    findElement(where).set(text)
  end

  def click(name)
    findElement(name).click
  end

  def look_for(text)
    if !@session.has_text?(text)
      fail("There is no '#{text}' on the page! And it should be visible.")
    end
  end

  def not_look_for(text)
    if !@session.has_no_text?(text)
      fail("There is '#{text}' on the page! And it should not be visible.")
    end
  end

end