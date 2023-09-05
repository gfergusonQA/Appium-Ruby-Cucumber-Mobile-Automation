Then('Left unit picker value should be {string}') do |value|
    puts("Left unit picker value is "+ value) # string concatenation 
end
  
Then('Right unit picker value should be centimeter') do
    puts("")
end

Then('Right unit picker value should be {string}') do |value|
    puts("Right unit picker value is " + value)
end
  
When('I press on clear button') do
    puts("Clear button is pressed")
end
  
Then(/^Show all button should be (enabled|disabled|undefined)$/) do |state|
    if state == "enabled"
        puts("Button is enabled")
    elsif state == "disabled"
        puts ("Buttons is disabled")
    elsif state == "undefined"
        puts("Button is undefined")
    end
end

When('I type {string} to target text field') do |target|
    puts("target is " + target)
end
  
  Then('I should see result as {string}') do |result|
    puts("result is #{result}") # this prints/puts the same result as string concatenation
end