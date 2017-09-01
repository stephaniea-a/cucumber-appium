require 'appium_lib'
require 'rspec'
require 'cucumber'
require_relative '../../lib/budget_app'
include BudgetApp


def desired_capabilities
  {caps:{
      "platformName": "Android",
      "platformVersion": "7.1.1",
      "deviceName": "emulator-5554",
      "app": "/Users/kierancornwall/Downloads/protect.budgetwatch_14.apk"
    }
  }
end

Appium::Driver.new(desired_capabilities)

class AppiumWorld
end

Appium::promote_appium_methods(AppiumWorld)

World(BudgetApp)

World  do
  AppiumWorld.new
end

Before{$driver.start_driver}
After{$driver.driver_quit}