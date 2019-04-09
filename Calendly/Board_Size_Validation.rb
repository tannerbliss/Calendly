require 'watir'

$boardsize = 6
$idcheck = (($boardsize * $boardsize) - 1)
puts "Begin test: Board Size Validation"

puts "Step 1: Open browser and go to game"
browser = Watir::Browser.new :firefox
browser.goto 'https://codepen.io/jshlfts32/full/bjambP/'

puts "Step 2: Enter size of tictactoe board"
browser.iframe(:id => 'result').text_field(:id => 'number').set $boardsize
browser.iframe(:id => 'result').button(:id =>'start').click

puts "Expected Result:"
puts "The board should be " + $boardsize.to_s + " by " + $boardsize.to_s + " size."

puts "Actual Result:"
if browser.iframe(:id => 'result').table(:id => 'table').td(:id => $idcheck.to_s).exists?
    puts " "
    puts "TEST PASSED."
    puts " "
    puts "The board is a " + $boardsize.to_s + " by " + $boardsize.to_s + " size."
else
    puts " "
    puts "******TEST FAILED.******"
    puts " "
    puts "The board is NOT a " + $boardsize.to_s + " by " + $boardsize.to_s + " size."
end

puts "End test: Board Size Validation"