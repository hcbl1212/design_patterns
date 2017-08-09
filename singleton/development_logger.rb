require './custom_logger'

class DevelopmentLogger < Logger

  def initialize(*args, &block)
    @log = File.open('log/development.log', 'a')
  end

  def log information
    #development log does not need to redact any information
    logger_mutex { @log.puts information }
  end

end 
