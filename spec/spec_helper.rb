require 'rubygems'
require 'rspec'
require 'rspec/expectations'
require 'appium_lib'
require 'byebug'

RSpec.configure do |config|
  config.color_enabled = true
  config.before(:all) do
    options = {
      caps: {
        platformName: 'Android',
        appActivity: '.Settings',
        appPackage: 'com.android.settings',
        deviceName: '0305f6f60937cfa2'
      },
      launchTimeout: 20000
    }
    driver = Appium::Driver.new(options).start_driver
    driver.manage.timeouts.implicit_wait = 3
    Appium.promote_appium_methods Object
  end

  config.after(:all) do
    driver_quit
  end
end

