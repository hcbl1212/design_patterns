class Logger
  require './development_logger'
  require './production_logger'
  
  @@instance = new
  @instantiated = false

  def self.new
    #lets allow the children to be created
    return unless (self != Logger || @instantiated == false)
    @instantiated = true
    super
  end
  
  def self.instance
    Logger.singleton_registry_look_up(ENV['DEVELOPMENT_ENVIRONMENT']) 
  end

  def initialize(*args, &block)
    @@registry = {}
    Logger.populate_registry 
  end
  
  #force all children to implement log so there is a common interface
  def log information 
    raise "Must Implement Log Method"
  end

  def self.register singleton_name, logger_type
    @@registry[singleton_name.to_sym] = logger_type      
  end 

  def self.singleton_registry_look_up singleton_name
    @@registry[singleton_name.to_sym]
  end
  
  #major drawback of using static variables is that all subclasses have to be 
  #instantiated so that they can be registered
  def self.populate_registry
    ["DevelopmentLogger", "ProductionLogger"].each do |logger_type|
       Logger.register logger_type, Object.const_get(logger_type).send(:new)
    end
  end
  
  private_class_method :new 
end
