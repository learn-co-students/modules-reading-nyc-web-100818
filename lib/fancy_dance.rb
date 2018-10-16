# a way to define one module and specify which methods were intended as class methods and which methods as instance methods:
# refactor the two modules into one, and use nested module namespacing to clarify our code.

module FancyDance #define first module
  module InstanceMethods # "" 2nd module = 1st nested module: put all methods want to use as #instance

    def twirl
      "I'm twirling!"
    end

    def jump
      "Look how high I'm jumping!"
    end

    def pirouette
      "I'm doing a pirouette"
    end

    def take_a_bow
      "Thank you, thank you. It was a pleasure to dance for you all."
    end
  end

  module ClassMethods #2nd nested module: metadata method to use as .Class method

    def metadata
      "This class produces objects that love to dance."
    end
  end
end
