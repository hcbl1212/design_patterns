Dir.glob('./proc_based_strategy/*.rb', &method(:require))
class TempConverterProcContext
  include ProcBasedStrategy

  def initialize(convert_from)
    @convert_from = convert_from        
  end 

end
