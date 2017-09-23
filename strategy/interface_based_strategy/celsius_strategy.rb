require './interface_based_strategy/strategy_interface'
class CesliusStrategy < StrategyInterface

  def convert_temperature_scales(convert_from, convert_to, temperature)
    case convert_to
    when 'farenheint'
      temperature * 5.0 / 9.0 + 32
    when 'kelvin'
      temperature + 273.15
    when 'celsius'
      temperature
    else
      raise "This Scale is currently not supported"
    end
  end

end
