require 'appium_lib'
require 'cucumber'

# Define the parameters for the Appium Driver
def capabilities
  {
    caps: {
      platformName: 'Android',
      platformVersion: '33.0',  # Update this if you're using a different Android API version
      deviceName: 'Pixel 4 API 33',
      app: '/Users/gina/Desktop/android_automation/features/support/PreciseUnitConversion.apk',
      automationName: 'UiAutomator2', # This is recommended for newer Android versions and Appium 2.0
      avd: 'Pixel_4_API_33', # Specify the AVD (Android Virtual Device) you want to use.
      # newCommandTimeout: '3600'
      # Add other desired capabilities here
    },
    appium_lib: {
      server_url: 'http://localhost:4723/wd/hub'
    }
  }
end

# Create a custom World class so we can set up our own methods & attributes
class AppiumWorld
end

# Set the World class to our custom class
World do
  AppiumWorld.new
end

# Set the driver to be used for all the steps
$driver = Appium::Driver.new(capabilities, true)

# Promote appium driver methods to class methods for our custom World
Appium.promote_appium_methods(AppiumWorld)

