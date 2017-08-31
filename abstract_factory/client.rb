require './play_game.rb'
class Client
  puts "Enter Xbox or Playstation"
  console_type = gets.chomp
  game = PlayGame.new(console_type)
end
