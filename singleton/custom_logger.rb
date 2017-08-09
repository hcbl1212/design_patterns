class Logger
  require './development_logger'
  require './production_logger'
  
  @@instance = new

  def initialize *args, &block
    populate_registry 
  end

  def self.instance
    Logger.singleton_registry_look_up(ENV['DEVELOPMENT_ENVIRONMENT']) 
  end

  #using a mutex for thread safety
  def self.mutex
    @mutex ||= Mutex.new
  end

  def self.registry
    @registry ||= {}
  end

  #force all children to implement log so there is a common interface
  def log information 
    raise "Must Implement Log Method"
  end

  def close 
    @log.nil? ? (raise "Must Declare Log Variable as @log") : @log.close
  end

  def self.singleton_registry_look_up singleton_name
    self.registry[singleton_name.to_sym]
  end

  private

  def register singleton_name, logger_type
    self.class.registry[singleton_name.to_sym] = logger_type      
  end 

  #major drawback of using static variables is that all subclasses have to be 
  #instantiated so that they can be registered
  def populate_registry
    ["DevelopmentLogger", "ProductionLogger"].each do |logger_type|
       register logger_type, Object.const_get(logger_type).send(:new)
    end
  end

  def logger_mutex
    self.class.mutex.synchronize { yield }
  end

  private_class_method :new 
end
