require './temp_converter_proc_example'
require './temp_converter_interface_example'

class Client
  ['TempConvertInterfaceExample', 'TempConverterProcExample'].each do | temp_convert_example |
    temp_converter = Object.const_get(temp_convert_example).new
    ['farenheit_to_celsius', 'farenheint_to_kelvin', 'celsius_to_farenheint',
     'celsius_to_kelvin', 'kelvin_to_celsius', 'kelvin_to_farenheint'].each do | temperature_scale_conversion_direction |
      convert_from, convert_to =  temperature_scale_conversion_direction.split(/_to_/)
      puts temp_converter.convert_temperature(convert_from, convert_to, 0)
    end
  end
end
