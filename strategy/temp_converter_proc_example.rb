Dir.glob('./proc_based_strategy/**/*.rb', &method(:require))
class TempConverterProcExample
  include ProcBasedStrategy

  def convert_temperature(convert_from, convert_to, temperature)
    convert_temperature_scales(convert_from, convert_to, temperature)
  end

end
