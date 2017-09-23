Dir.glob('./interface_based_strategy/**/*.rb', &method(:require))
class TempConvertInterfaceExample

  def convert_temperature(convert_from, convert_to, temperature)
    case convert_from
    when 'kelvin'
      KelvinStrategy.convert_temperature_scales(convert_from, convert_to, temperature)
    when 'celsius'
      CelsiusStrategy.convert_temperature_scales(convert_from, convert_to, temperature)
    when 'fahrenheit'
      FahrenheitStrategy.convert_temperature_scales(convert_from, convert_to, temperature)
    end
  end

end
