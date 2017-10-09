require './temp_converter_proc_context'
require './temp_converter_interface_context'

class Client
  #The client has a context which is used to determine the specific concrete strategy
  #and return the concrete strategy to the client.
  ['TempConvertInterfaceContext', 'TempConverterProcContext'].each do | temp_convert_context |
    #The values in this array are different concrete strategies that will be chosen at runtime
    #to implement.
    ['fahrenheit_to_celsius', 'fahrenheit_to_kelvin', 'celsius_to_fahrenheit',
     'celsius_to_kelvin', 'kelvin_to_celsius', 'kelvin_to_fahrenheit'].each do | temperature_scale_conversion_direction |
      #Parsing the string into the two temperature scales.
      convert_from, convert_to = temperature_scale_conversion_direction.split(/_to_/)
      #This instantiates the context with the specific concrete strategy and returns the concrete strategy.
      temp_converter = Object.const_get(temp_convert_context).new(convert_from)
      #Printing the converted temperature.
      puts temp_converter.convert_temperature(convert_to, 0)
    end
  end

end
