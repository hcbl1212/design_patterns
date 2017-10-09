Dir.glob('./interface_based_strategy/*.rb', &method(:require))
class TempConvertInterfaceContext

  def initialize(convert_from)
    @convert_strategy = Object.const_get("#{convert_from.capitalize}Strategy").new
  end

  def convert_temperature(convert_to, temperature)
    @convert_strategy.convert_temperature(convert_to, temperature)
  end

end
