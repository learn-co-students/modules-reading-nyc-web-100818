
require_relative './dance_module.rb'
require_relative './class_methods_module.rb'
require_relative './fancy_dance.rb'

class Dancer
  # this will inject the Dance module inside the Dancer class, and allow us to use methods inside Dance module as INSTANCE METHODS
  # include Dance
  # extend MetaDancing

  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end
