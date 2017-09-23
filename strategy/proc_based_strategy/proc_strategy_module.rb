module ProcBasedStrategy
   TEMPERATURE_TRANSFORMATIONS= {
    farenheit_to_celsius: Proc.new { (temperature - 32) * 5.0 / 9.0 },
    farenheint_to_kelvin: Proc.new { (temperature - 32) * 5.0 / 9.0 + 273.15 },
    celsius_to_farenheint: Proc.new { temperature * 5.0 / 9.0 + 32 },
    celsius_to_kelvin: Proc.new { temperature + 273.15 },
    kelvin_to_celsius: Proc.new { temperature - 273.15 },
    kelvin_to_farenheint: Proc.new { temperature * 5.0 / 9.0 + 32 + 273.15 }
  }

  def convert_temperature_scales(convert_from, convert_to, temperature)
    check_input_equals_out_put(convert_from, convert_to) ? temperature :
    TEMPERATURE_TRANSFORMATIONS["#{convert_from}_to_#{convert_to}".to_sym].call(temperature) rescue "Conversion Doesn't Exist"      
  end

  def check_input_equals_out_put(convert_from, convert_to)
    convert_from.to_s == convert_to.to_s
  end

end
