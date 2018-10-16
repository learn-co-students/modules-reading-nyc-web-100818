
require_relative './dance_module.rb'
require_relative './class_methods_module.rb'
require_relative './fancy_dance.rb'

class Kid
  # this will inject the Dance module inside the Kid class, and allow us to use methods inside Dance module as INSTANCE METHODS
  # include Dance
  # extend MetaDancing


  # We refer to the name-spaced modules or classes with ::. This syntax references the parent and child relationship of the nested modules. i.e. Parent::Child
  # So if we want to extend InstanceMethods submodule from FancyDance module we write FancyDance::InstanceMethods

  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end

# Inheritance using the < syntax, implies that a class is a type of something. A BMW class should inherit from a Car class because a BMW is a type of car: class BMW < Car.

# But what about the :: that we're using for our modules? The :: syntax just denotes a name-space. Doing BMW::Car just gives the BMW class access to all constants, instance methods, etc, without stating that a BMW is a type of car. The :: syntax carries all public items over to the inheriting class or module.

# If you have a module whose methods you would like to be used in another class as instance methods, then you must include the module.
#
# If you want a module's methods to be used in another class as class methods, you must extend the module.
