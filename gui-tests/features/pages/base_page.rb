class BasePage
  @url = ''

  def initialize(session)
    @session = session
    @domain = 'www.future-processing.com'
  end

  def get_common_page_elements
    {
    }
  end

  def visit
    @session.visit @url
  end

  def get_page_element(element_name)
    return get_page_elements[element_name] if get_page_elements.has_key? element_name
    return get_common_page_elements[element_name] if get_common_page_elements.has_key? element_name
    raise 'Undefined element "%s"' % element_name
  end

  def get_selector(element_name)
    get_page_element(element_name)[:selector]
  end

  def get_object(element_name)
    class_name = get_page_element(element_name)[:object]
    return self unless class_name
    object = class_name.new(@session)
    object
  end

  def get_element(element_name)
    @session.find *get_selector(element_name)
  end

  def get_all_elements(element_name)
    @session.all *get_selector(element_name)
  end

  def press(element_name)
    get_element(element_name).click
    get_object(element_name)
  end

  def is_visible(element_name)
    get_element(element_name).visible?
  end

  def select_element(item, element_name)
    @session.select(translate(item), :from => get_selector(element_name))
  end

  def upload_file(path, field)
    locator = get_selector(field)
    @session.attach_file(locator, File.expand_path('features/resources/' + path))
  end

  def fill(value, element_name)
    get_element(element_name).set(value)
  end
end
