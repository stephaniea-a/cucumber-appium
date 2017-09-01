
class BudgetPage
  attr_accessor :calendar_button

  def initialize(driver)
    @driver = driver
    @calendar_button = 'protect.budgetwatch:id/action_calendar'
  end

  def check_calendar_button_displayed?
    @driver.find_element(:id, @calendar_button)
  end

end