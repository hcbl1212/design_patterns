Dir.glob('./factories/**/**/*.rb', &method(:require))
require './interfaces/abstract_factory_interface'
class Client
  ['Xbox', 'Playstation', 'Wii'].each do | console_type |
    game = GameAbstractFactory.instance(console_type)
    game.console.power_on
    game.controller.move_forward
    game.controller.jump
    game.console.power_off
  end
end
