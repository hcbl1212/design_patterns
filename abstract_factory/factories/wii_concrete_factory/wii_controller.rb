require './strategies/controller_button_strategies'
class WiiController
  include ControllerButtonStrategies::WiiControllerButtons
end
