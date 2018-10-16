require_relative './dance_module.rb' #tells that we need to use this file 
require_relative './class_methods_module.rb' #load this file too 
require_relative './fancy_dance.rb'
class Kid
  # include Dance #include methods from Dance module 
  # extend MetaDancing 

  include FancyDance::InstanceMethods 
  extend FancyDance::ClassMethods 
  attr_accessor :name
 
  def initialize(name)
    @name = name
  end
end 