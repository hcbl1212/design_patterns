module ProcBasedStrategy
  TEMPERATURE_TRANSFORMATIONS = {
    fahrenheit_to_celsius: Proc.new { | temperature | (temperature - 32) * 5.0 / 9.0 },
    fahrenheit_to_kelvin: Proc.new { | temperature | (temperature - 32) * 5.0 / 9.0 + 273.15 },
    celsius_to_fahrenheit: Proc.new { | temperature |temperature * 5.0 / 9.0 + 32 },
    celsius_to_kelvin: Proc.new { | temperature | temperature + 273.15 },
    kelvin_to_celsius: Proc.new { | temperature | temperature - 273.15 },
    kelvin_to_fahrenheit: Proc.new { | temperature | temperature * 5.0 / 9.0 + 32 + 273.15 }
  }

  def convert_temperature(convert_to, temperature)
    check_input_equals_out_put(convert_to) ? temperature :
    TEMPERATURE_TRANSFORMATIONS["#{@convert_from}_to_#{convert_to}".to_sym].call(temperature)
  end

  private

    def check_input_equals_out_put(convert_to)
      @convert_from.to_s == convert_to.to_s
    end

end
