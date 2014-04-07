require 'capybara'
require 'selenium-webdriver'

Capybara.configure do |config|
  config.match = :one
  config.exact_options = true
  config.ignore_hidden_elements = false
  config.visible_text_only = true
  config.default_wait_time = 30
  config.default_driver = :selenium
  config.run_server = false
end

driver = 'seleniumFirefoxDriver'

Capybara.register_driver :seleniumFirefoxDriver do |app|
  Selenium::WebDriver::Firefox.path = ENV['FIREFOX_PATH'] if not ENV['FIREFOX_PATH'].nil?

  Capybara::Selenium::Driver.new app, {
      :browser => :firefox,
  }
end

# quit browser if session is already created
Before do
  $session.driver.browser.quit if $session
  $session = nil
end

# create session if it does not exists
Before do
  unless $session
    case driver
      when 'seleniumFirefoxDriver'
        @session = Capybara::Session.new(:seleniumFirefoxDriver)
      when 'seleniumPhantomJSDriver'
        @session =  Capybara::Session.new(:seleniumPhantomJSDriver)
      else
        raise('selenium webdriver:%s not known!' % driver)
    end
    $session = @session
  else
    @session = $session
  end
end