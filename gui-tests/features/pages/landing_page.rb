# encoding: utf-8
class LandingPage < BasePage
    def initialize(session)
      super(session)
      @url = 'http://www.future-processing.com'
    end

    def get_page_elements
      {
        'blog menu item' => {:selector => [:xpath, '//div[@class="content"]/ul/li/a[text()="Blog"]'], :object => BlogPage},
      }
    end
end

