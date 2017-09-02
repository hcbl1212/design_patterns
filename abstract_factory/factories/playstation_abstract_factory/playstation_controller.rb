require './interfaces/controller_interface.rb'
class PlaystationController < Controller
  include ControllerButtonStrategies::PlaystationControllerButtons
end
