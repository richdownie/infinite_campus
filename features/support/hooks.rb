require 'selenium-webdriver'
require 'webdrivers'
require 'cucumber'
require 'rspec'
require 'pry'
require 'httparty'
require 'watir'
require 'cukehub'
require_relative '../page_objects/widgets_index_page'
require_relative '../page_objects/widget_new_page'
require_relative '../page_objects/sign_in_page'

$caps = Selenium::WebDriver::Remote::Capabilities.chrome(chromeOptions: { args: [ "--headless" ]})

Before do
  @widgets_index = WidgetsIndex.new(@browser, @domain)
  @widget_new = WidgetNew.new(@browser, @domain)
  @sign_in = SignIn.new(@browser, @domain)
  @cukehub_api_key = "hq5XBQWfNhGMwD9u72ybdrbX"
end
