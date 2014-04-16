# encoding: utf-8
class BlogPage < BasePage
    def initialize(session)
      super(session)
      @url = '%s/blog' % @domain
    end

    def get_page_elements
      {
        'latest posts item' => {:selector => [:xpath, '//section[@id="block-menu-block-2"]//ul[@class="menu"]/li/a[text()="Latest posts"]']},
      }
    end
end
