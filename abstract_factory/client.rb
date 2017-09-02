require './play_game'
class Client
  puts 'Enter Xbox or Playstation'
  console_type = gets.chomp
  game = PlayGame.new(console_type)
  game.controller.x
  game.controller.y
  game.console.power_off
end
