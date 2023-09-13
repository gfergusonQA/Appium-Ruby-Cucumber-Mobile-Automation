require "appium_lib"
require "cucumber"

#Define capabilities
def caps
{ caps: {
    deviceName: "Gina", #You can put anything here
    platformName: "Android",
    automationName: "Appium",
    app: File.join(File.dirname(__FILE__), "PreciseUnitConversion.apk"),
    appPackage: "com.ba.universalconverter",
    appActivity: "MainConverterActivity",
    newCommandTimeout: "3600"
}}
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
