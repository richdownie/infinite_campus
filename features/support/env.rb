Before do
  @browser = Watir::Browser.new  #Chrome is the default
  #You can try these other browsers
  # @browser = Watir::Browser.new :firefox
  # @browser = Watir::Browser.new :internet_explorer
  # @browser = Watir::Browser.new :edge
  # @browser = Watir::Browser.new :safari
  @domain = 'https://infinitecampus.penfield.edu/campus/portal/penfield.jsp?&rID=0.21226013220703632&status=password-error&lang=en'
end
