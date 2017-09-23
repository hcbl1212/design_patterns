require './temp_converter_proc_example'
require './temp_converter_interface_example'

class Client

  ['TempConvertInterfaceExample', 'TempConverterProcExample'].each do | temp_convert_example |
    ['fahrenheit_to_celsius', 'fahrenheit_to_kelvin', 'celsius_to_fahrenheit',
     'celsius_to_kelvin', 'kelvin_to_celsius', 'kelvin_to_fahrenheit'].each do | temperature_scale_conversion_direction |
      convert_from, convert_to =  temperature_scale_conversion_direction.split(/_to_/)
      temp_converter = Object.const_get(temp_convert_example).new(convert_from)
      puts temp_converter.convert_temperature(convert_to, 0)
    end
  end

end
