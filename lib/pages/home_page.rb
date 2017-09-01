
class HomePage

  attr_accessor :settings_button, :import_export_button, :more_options_button, :menu_options, :driver

  def initialize(driver)
    @driver = driver
    @settings_button = 'protect.budgetwatch:id/action_settings'
    @import_export_button = 'protect.budgetwatch:id/action_import_export'
    @more_options_button = 'More options'
    @menu_options = 'protect.budgetwatch:id/menu'
  end

  def check_homepage_displayed?
    @driver.find_element(:id, @menu_options)
  end

  def click_budget_link
    @driver.find_element(:id, @menu_options).click
  end

end