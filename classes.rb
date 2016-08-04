#CLASSES
#@ symbol creates an instance of that variable. Very similar to "this" in javascript
class Person
    def initialize(name)
        @name = name
    end
end

brady = Person.new("Brady") #creates a new person variable passing in "Brady" into the initialize method
puts "Brady object is #{brady}"
#working with class variables

class Person
  @@people_count = 0 #class variable
  def initialize(name)
    @name = name
    @@people_count += 1
  end

  def self.number_of_instances
    return @@people_count
  end
end

matz = Person.new("Yukihiro")
dhh = Person.new("David")

puts "Number of Person instances: #{Person.number_of_instances}" #outputs 2

#Working with inheritance
class ApplicationError
  def display_error
    puts "Error! Error!"
  end
end

class SuperBadError < ApplicationError #SuperBadError will inherit from ApplicationError #reads like SuperBadError inherits from ApplicationError
end

err = SuperBadError.new
err.display_error

