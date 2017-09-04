require './strategies/controller_button_strategies'
class XboxController
  include ControllerButtonStrategies::XboxControllerButtons
end
