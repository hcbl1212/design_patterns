require 'singleton'
class GameAbstractFactory
  include Singleton
  #Now we could define methods here that all the concrete factories
  #need to implement and then raise an error in case they are not
  #implemented. Instead ruby provids a MethodMissing error which 
  #will be thrown if the error is missing in the concrete factory 
  #and the method is called.  I will use this so we can be more
  #idiomatic to the ruby way.
end