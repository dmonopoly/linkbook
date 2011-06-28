Given /^I am the registered user "(.+)"$/ do |login|
  @user = User.create!(
    :login => login,
    :password => "password",
    :password_confirmation => "password",
    :email => "johndoe@somewhere.com"
  )
end

When /^I log in$/ do
  fill_in "Login", :with => @user.login
  fill_in "Password", :with => @user.password
  click_button "Login"
end

Given /^I am the logged in (.+) "(.+)"$/ do |role, login|
  user = User.create!(
    :login => login,
    :password => "password",
    :password_confirmation => "password",
    :role => role,
    :email => "some_email@somewhere.com"
  ).confirm!
  UserSession.create(user)
end