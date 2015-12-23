# Create a Car Class from User Stories


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode
#initiate a class with model and color instance variable
#define a distance method with distance as a parameter
#define a speed method with speed as a parameter
#define a drirection method with left/right as parameter
#define an accelerate/decelerate method given the speed difference as parameter
#define a total_distance_traveled method that returns the total distance traveled
#define a stop method that sets the speed to zero
#define a drive method to give the car a new speed
#an array of pizza values
#define a method called deliver_pizza with pizzas as a parameter
# pop the first pizza off the the array, and delete from the array
# return "Pizza something got delieverd"
# model, color, distance, speed,insulated compartment

# 3. Initial Solution
=begin
class Car

  def initialize(model, color)
    @model = model
    @color = color
    @distance = 0
    @speed = 0
    @direction
    @play_by_play = ""
    @pizzas = ["cheese", "pepperoni", "sauasge", "veggie"]
  end

  def distance(distance)
    @distance += distance
    @play_by_play << "drove #{distance} miles\n"
  end

  def speed(speed)
    @speed = speed
    @play_by_play << "set the speed to #{speed} mph\n"
  end

  def direction(direction)
    @direction = direction
    @play_by_play << "turn #{direction}\n"
  end

  def accelerate(speed_change)
    @speed += speed_change
    @play_by_play << "accelerate #{speed_change} mph\n"
  end

  def decelerate(speed_change)
    @speed -= speed_change
    @play_by_play << "decelerate #{speed_change} mph\n"
  end

  def total_distance_traveled
    @distance
    @play_by_play << "total distance #{@distance} miles\n"
  end

  def stop
    @speed = 0
    @play_by_play << "stop the car\n"
  end

  def drive
    @speed
  end

  def play_by_play
  @play_by_play
  end


  def deliver_pizza
    pizza = @pizzas.shift
    @play_by_play << "Here is your #{pizza} pizza."
  end


end
=end

# 4. Refactored Solution

class Car
  attr_accessor :speed, :direction
  attr_reader :distance

  def initialize(model, color)
    @model = model
    @color = color
    @distance = 0
    @speed = 0
    @direction = nil
    @insulated_compartment = nil
  end

  def distance=(distance)
   @distance += distance
  end

  def stop
    @speed = 0
    "Stopping at the stop sign"
  end

  def deliver_pizza(pizzas)
    @insulated_compartment = pizzas
    pizza = @insulated_compartment.shift
    "Here is your #{pizza} pizza."
  end


end

class Pizza
  attr_reader :ingredients, :pizza_crust

  def initialize(ingredients, pizza_crust)
    @ingredients = ingredients
    @pizza_crust = pizza_crust
    @pizza = ""
  end

  def make_pizza
    @pizza = @ingredients.join(",").concat( " " + @pizza_crust)
  end

  def pizza_to_be_delivered
     @pizza
  end

end

# 1. DRIVER TESTS GO BELOW THIS LINE
veggie = Pizza.new(["olive", "red pepper", "green pepper", "onion", "mushroom"], "thin crust")
cheese = Pizza.new(["cheeder", "gouda", "mozzarella"], "pan crust")
meat = Pizza.new(["sauasge", "pepperoni","ham"], "gluten-free thin crust")
p "We have a order for a #{veggie.make_pizza} pizza."
p "We have a order for a #{cheese.make_pizza} pizza."
p "We have a order for a #{meat.make_pizza} pizza."
p "A #{veggie.pizza_to_be_delivered} is ready for delivery."
p "A #{cheese.pizza_to_be_delivered} is ready for delivery."
p "A #{meat.pizza_to_be_delivered} is ready for delivery."
pizzas = ["#{veggie.pizza_to_be_delivered}", "#{cheese.pizza_to_be_delivered}", "#{meat.pizza_to_be_delivered}"]

fancy_car = Car.new("Toyota Camry", "Blue")
fancy_car.distance = 0.25
p "Total of #{fancy_car.distance} miles driven."
fancy_car.speed = 25
p "Your current speed is #{fancy_car.speed} mph"
p fancy_car.stop
fancy_car.direction = "right"
p "Turn #{fancy_car.direction}"
fancy_car.distance = 1.5
p "Total of #{fancy_car.distance} miles driven."
fancy_car.speed = 35
p "Your current speed is #{fancy_car.speed} mph"
fancy_car.speed = 15
p "Your current speed is #{fancy_car.speed} mph"
fancy_car.distance = 0.25
p "Total of #{fancy_car.distance} miles driven."
p fancy_car.stop
fancy_car.direction = "left"
p "Turn #{fancy_car.direction}"
fancy_car.distance = 1.4
p "Total of #{fancy_car.distance} miles driven."
fancy_car.speed = 35
p "Your current speed is #{fancy_car.speed} mph"
p fancy_car.stop
p fancy_car.deliver_pizza(pizzas)


# 5. Reflection
=begin
What concepts did you review in this challenge?
Creating classes and having them interact with other classes. I haven't practiced this since week 6 so it was goood to come back to this and get some pratice.

What is still confusing to you about Ruby?
For this particular challenge I was confused about whether or not to create reader methods for the pizza class. Especially since I wasn't using it in my driver code.

What are you going to study to get more prepared for Phase 1?
I'm goinng to finish the review and new concepts section, work on solving some additional algorithm problems in both Ruby and Javascript, and ready Practical Object Oriented Design with Ruby. A lot of DBC grads have recommended reading this book so I'm going to try to finish it up before DBC starts.