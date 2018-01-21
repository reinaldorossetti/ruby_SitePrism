Given(/^I access the Riachuelo site$/) do
  p '1'
  @home_page = LoginPage.new
  p '2'
  #@home_page.load
  visit('')
  p '3'
end