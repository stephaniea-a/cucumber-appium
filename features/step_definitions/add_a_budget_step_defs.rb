Given(/^I can open the app$/) do
  homepage.check_homepage_displayed?
end

When(/^click on budget$/) do
  homepage.click_budget_link
end

Then(/^the budget page opens$/) do
  # budgetpage.check_calendar_button_displayed?
end
