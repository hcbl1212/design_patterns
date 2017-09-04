require './interfaces/controller_interface.rb'
class WiiController < Controller
  include ControllerButtonStrategies::WiiControllerButtons
end
