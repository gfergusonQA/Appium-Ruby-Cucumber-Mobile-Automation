 $driver = Appium::Driver.new(capabilities, true)

# Will run before every scenario. 'scenario' contains scenario details if needed.
Before do |scenario|
    $driver.start_driver
  end
  
  # Will run after every scenario. You can use this to take screenshots for failed scenarios or other teardown actions.
  After do |scenario|
    # if scenario.failed?
    #   if $driver
    #     # Capture a screenshot if a scenario fails and $driver is not nil
    #     time_stamp = Time.now.strftime("%Y-%m-%d_%H.%M.%S")
    #     screenshot_name = "screenshot_#{time_stamp}.png"
    #     screenshot_file = File.join(File.dirname(__FILE__), screenshot_name)
    #     $driver.screenshot(screenshot_file)
    #     embed(screenshot_file, 'image/png')
    #   end
    # end
    $driver.driver_quit if $driver
  end
  
  
  # If you'd like to perform any additional setup or teardown, hooks like BeforeStep or AfterStep can be added similarly.
  