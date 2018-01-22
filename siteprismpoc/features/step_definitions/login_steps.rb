page = LoginPage.new

Given(/^I access the Riachuelo site$/) do
  visit('')
  page.clickMenu
  page.login('52540430200')
end