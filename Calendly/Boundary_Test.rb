require 'watir'

puts "Begin test: Boundary Test"

puts "Step 1: Open browser and go to game"
browser = Watir::Browser.new :firefox
browser.goto 'https://codepen.io/jshlfts32/full/bjambP/'

puts "Step 2: Enter size of tictactoe board"
browser.iframe(:id => 'result').text_field(:id => 'number').set '100000000'
browser.iframe(:id => 'result').button(:id =>'start').click

puts "Step 3: Wait 5 seconds to let the page load."
sleep 5

puts "Expected Result:"
puts "The page should load with the board visible."

if browser.iframe(:id => 'result').table(:id => 'table').tr.exists?
    puts " "
    puts "TEST PASSED."
    puts " "
    puts "The board and page loaded successfully."
else
    puts " "
    puts "******TEST FAILED.******"
    puts " "
    puts "The board and page did not load successfully."
end

puts "End test: Boundary Test"