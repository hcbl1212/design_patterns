require './interface_based_strategy/strategy_interface'
class FahrenheitStrategy < StrategyInterface

  def convert_temperature_scales(convert_from, convert_to, temperature)
    base_calculation = (temperature - 32) * 5.0 / 9.0
    case convert_to
    when 'celsius'
     base_calculation 
    when 'kelvin'
      base_calculation + 273.15
    when 'farenheint'
      temperature
    else
      raise "This Scale is currently not supported"
    end
  end

end
