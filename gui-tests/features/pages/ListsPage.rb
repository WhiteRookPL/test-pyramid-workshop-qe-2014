class ListsPage < BasePage

  def initialize(session)
    super(session)
  end

  def selectListByName(name)
    @session.all(".task-lists__list__info").select { |list| list.text().include?(name) }.first
  end

  def mapNameToSelector(name)
    case name
      when 'new list field'
        '#new-list-name'

      when 'add button'
        '#add-new-list'

      else
        fail("There is no '#{name}' in the ListsPage object mapping definition!")
    end
  end

  def followByName(name)
    selectListByName(name).click
    go('task list')
  end

  def go(name)
    case name
      when 'task list'
        TaskListPage.new(@session)

      else
        fail("There is no '#{name}' in the ListsPage page mapping definition!")
    end
  end

end