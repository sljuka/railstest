Given(/^there's a user with "(.*?)" email$/) do |email|
  FactoryGirl.create(:user, email: email)
end

When(/^I am on the homepage$/) do
  visit "/"
end

Then(/^I should see the user$/) do
  user = User.first
  expect(page).to have_content(user.email)
end
