Given(/^I am on the Infinite Campus Login page$/) do
  @browser.goto @domain
  username = @browser.text_field id: 'username'
  username.set 'vdownie@icloud.com'
  password = @browser.text_field id: 'password'
  password.set 'vdownie@icloud.com'
  signin = @browser.button id: 'signinbtn'
  signin.click
end