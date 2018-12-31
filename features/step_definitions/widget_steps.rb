Given /I am on the fsar widgets page/ do
  @widgets_index.visit
end

And /I click the New Widget link/i do
  @widgets_index.new_widget.click
end

Then /I should be on the new widgets page/i do
  expect(@browser.url).to include('/widgets/new')
end

And /I enter a valid widget/i do
  @widget_new.name("CukeHub")
  @widget_new.create_widget.click
end

Then /I should be on the widgets page/i do
  expect(@browser.url).to include('/widgets')
end
