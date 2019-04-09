require 'watir'

puts "Begin test: O Wins"

puts "Step 1: Open browser and go to game"
browser = Watir::Browser.new :firefox
browser.goto 'https://codepen.io/jshlfts32/full/bjambP/'

puts "Step 2: Enter size of tictactoe board"
browser.iframe(:id => 'result').text_field(:id => 'number').set '3'
browser.iframe(:id => 'result').button(:id =>'start').click

puts "Step 3: X and 0 player plays and O wins"
browser.iframe(:id => 'result').td(:id =>'3').click
browser.iframe(:id => 'result').td(:id =>'4').click
browser.iframe(:id => 'result').td(:id =>'0').click
browser.iframe(:id => 'result').td(:id =>'6').click
browser.iframe(:id => 'result').td(:id =>'1').click
browser.iframe(:id => 'result').td(:id =>'2').click

puts "Expected Result:"
puts "A message should display 'Congradulations player O! You've won. Refresh to play again!'"

puts "Actual Result:"
if browser.iframe(:id => 'result').div(:id => 'endgame').text.include? "Congratulations player O!"
    puts " "
    puts "TEST PASSED."
    puts " "
    puts "Found: 'Congradulations player O! You've won. Refresh to play again!'"
else
    puts " "
    puts "******TEST FAILED.******"
    puts " "
    puts "Could not find: 'Congradulations player O! You've won. Refresh to play again!'"
end

puts "End test: O Wins"