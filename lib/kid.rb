
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
