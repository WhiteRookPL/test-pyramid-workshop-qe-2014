class TaskListPage < BasePage
  include Ajax

  def initialize(session)
    super(session)
  end

  def selectCheckBoxNearName(name)
    @session.find(:xpath, "/html/body/section/ul/li/div/span[contains(text(), '#{name}')]/../preceding-sbling::input")
  end

  def mapNameToSelector(name)
    case name
      when 'new task field'
        '#new-task-title'

      when 'add button'
        '#add-new-task'

      else
        fail("There is no '#{name}' in the TaskListPage object mapping definition!")
    end
  end

  def checkNear(name)
    # TODO: Wykorzystaj powyższą metodę (UWAGA: selektor ma literówkę!) i użyj odpowiedniej metody do zaznaczania CheckBoxa.
  end

end