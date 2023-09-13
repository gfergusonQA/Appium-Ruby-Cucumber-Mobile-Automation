Before do
    Appium::Driver.start_driver
end
#above is executing before  every test scenario

After do
    Appium::Driver.driver_quit
end