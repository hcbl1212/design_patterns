require './custom_logger'

class ProductionLogger < Logger

  def initialize(*args, &block)
    @log = File.open('log/production.log', 'a')
  end

  def log information
    #the actually password should be redacted in production log
    @log.puts information.gsub(/(?<=password:\s).*/im, "FILTERED")
  end
end 
