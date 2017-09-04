require './play_game'
class Client
  ['Xbox', 'Playstation'].each do | console_type |
    game = PlayGame.new(console_type)
    game.controller.x
    game.controller.y
    game.console.power_off
  end
end
