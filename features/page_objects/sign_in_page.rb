class SignIn

  def initialize(browser, domain)
    @browser = browser
    @domain = domain
  end

  def visit
    @browser.goto(@domain + '/users/sign_in')
  end

  def email(value)
    email = @browser.text_field id: 'user_email'
    email.exists?
    email.set value
  end

  def password(value)
    password = @browser.text_field id: 'user_password'
    password.exists?
    password.set value
  end

  def sign_in
    @browswer.button
  end
end
