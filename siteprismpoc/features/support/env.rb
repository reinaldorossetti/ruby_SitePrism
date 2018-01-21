require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'rspec/retry'
require 'site_prism'

Capybara.register_driver :selenium do |app|
  # Capybara::Selenium::Driver.new(app, :browser => :chrome)
  Capybara::Selenium::Driver.new(app,
                                 :browser => :chrome,
                                 :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
                                     'chromeOptions' => {'args' => [ "--start-maximized" ]}))
end

# Capybara.default_driver = :selenium
# Capybara.default_max_wait_time = 60
# Capybara.use_implicit_wait = true

Capybara.configure do |config|
  #config.use_implicit_waits = true
  config.app_host = 'https://www.riachuelo.com.br'
  config.javascript_driver = :webkit
  config.default_driver = :selenium
  config.default_max_wait_time = 60
end

SitePrism.configure do |config|
  config.use_implicit_waits = true
end

# Capybara.app_host = "https://www.riachuelo.com.br"
#Capybara.app_host = "http://rchlo.wj-sandbox.com.br"
