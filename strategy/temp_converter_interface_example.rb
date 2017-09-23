Dir.glob('./interface_based_strategy/*.rb', &method(:require))
class TempConvertInterfaceExample

  def initialize(convert_from)
    @convert_strategy = Object.const_get("#{convert_from.capitalize}Strategy").new
  end

  def convert_temperature(convert_to, temperature)
    @convert_strategy.convert_temperature(convert_to, temperature)
  end

end
