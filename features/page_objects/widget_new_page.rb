class WidgetNew

  def initialize(browser, domain)
    @browser = browser
    @domain = domain
  end

  def name(value)
    name = @browser.text_field id: 'widget_name'
    name.exists?
    name.set value
  end

  def create_widget
    @browser.button value: 'Create Widget'
  end

end
