Dir.glob('./factories/**/**/*.rb', &method(:require))
require './interfaces/abstract_factory_interface'
class Client
  #The client is a class that only interacts with the concrete
  #instances of the abstract factory and its products by
  #the common interfaces defined in each interface.
  ['Xbox', 'Playstation', 'Wii'].each do | console_type |
    #Creating the type of concrete factory needed
    #to play the gaming console desired.
    game = GameAbstractFactory.instance(console_type)
    #Getting a console from the console factory.
    console = game.console
    #Powering on the console
    console.power_on
    #Getting the controller from the controller factory.
    controller = game.controller
    #Moving forward using the controller for the instantiated console.
    controller.move_forward
    #Jumping using the controller for the instantiated console.
    controller.jump
    #Powering off the console.
    console.power_off
  end
end
