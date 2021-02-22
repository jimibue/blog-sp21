class Page < ApplicationRecord

    # instance method
    def say_hello
     puts "hi"
    end

    # class method
    def self.say_hi
        puts "hi class"
    end
end
