require './interface_based_strategy/strategy_interface'
class KelvinStrategy < StrategyInterface
  
  def convert_temperature_scales(convert_from, convert_to, temperature)
    case convert_to
    when 'celsius'
      temperature - 273.15
    when 'farenheint'
      temperature * 5.0 / 9.0 + 32 + 273.15 
    when 'kelvin'
      temperature
    else
      raise "This Scale is currently not supported"
    end
  end

end
