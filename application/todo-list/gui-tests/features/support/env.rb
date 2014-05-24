require 'capybara'

Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.default_selector = :css
Capybara.default_wait_time = 5