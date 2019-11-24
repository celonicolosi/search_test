require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end