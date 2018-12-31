Given /I authenticate fsar/i do
  @sign_in.visit
  @sign_in.email('<your_email>')
  @sign_in.password('<your_password>')
  @sign_in.sign_in.click
end
