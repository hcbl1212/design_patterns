require './strategies/controller_button_strategies'
class PlaystationController 
  include ControllerButtonStrategies::PlaystationControllerButtons
end
