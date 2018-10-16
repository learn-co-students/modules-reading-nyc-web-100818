require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'

class Dancer
  #include keyword, we allow our classes to use all of the methods of the included module as instance methods.
  # include Dance
  # extend MetaDancing
    #name-spaced modules or classes- ::. references parent-child relationship of the nested modules
    # ::  carries all public items over to the inheriting class or module.
  extend FancyDance::ClassMethods#add functionality to our classes via class methods. We can now call the metadata class method on the Dancer and Kid classes:
  include FancyDance::InstanceMethods #include = add functionality to our classes via instance methods (any instance of Dancer or Kid can use)

  attr_accessor :name

  def initialize(name)
    @name = name
  end
end
