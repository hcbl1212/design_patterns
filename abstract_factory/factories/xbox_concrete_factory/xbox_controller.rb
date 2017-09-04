require './interfaces/controller_interface.rb'
class XboxController < Controller
  include ControllerButtonStrategies::XboxControllerButtons
end
