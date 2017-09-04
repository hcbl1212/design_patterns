require './play_game'
class Client
  ['Xbox', 'Playstation', 'Wii'].each do | console_type |
    game = PlayGame.new(console_type)
    game.console.power_on
    game.controller.move_forward
    game.controller.jump
    game.console.power_off
  end
end
