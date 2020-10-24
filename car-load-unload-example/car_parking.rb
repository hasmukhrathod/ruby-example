require_relative 'car'
require_relative 'use_stack'

class CarParking
    include UseStack
    def park_the_car(obj)
        add_to_stack(obj)
    end
    def take_the_car
        remove_from_stack
    end
end

##Creating 3 car objects
car1 = Car.new
car2 = Car.new
car3 = Car.new

## Displaying 3 car objects.
puts "3 car objects:"
puts car1, car2, car3

## creating object of parking class through which we can park the car.
ticket = CarParking.new

##Parking all the car.
puts "Loading the first car..."
puts "Cars in the parking slot: #{ticket.park_the_car(car1)}"
puts "Loading the Second car..."
puts "Cars in the parking slot: #{ticket.park_the_car(car2)}"
puts "Loading the Third car..."
puts "Cars in the parking slot: #{ticket.park_the_car(car3)}"

##take the last car out.
puts "The process of unloading the car starts.."
puts "#{ticket.take_the_car} car unloaded successfully."
puts "#{ticket.take_the_car} car unloaded successfully."
puts "#{ticket.take_the_car} car unloaded successfully."