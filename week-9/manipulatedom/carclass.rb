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

  def initialize(model, color)
    @model = model
    @color = color
    @distance = 0
    @speed = 0
    @direction = nil
    @insulated_compartment = nil
  end

  def distance=(distance)
   p @distance += distance
  end

  def distance
    @distance
    "I've driven a total of #{@distance} miles"
  end

  def speed=(miles_per_hour)
    @speed = miles_per_hour
  end

  def speed
    @speed
    "Your current speed is #{@speed} mph"
  end

  def direction=(direction)
    @direction = direction
     "Turn #{distance}"
  end

  def stop
    @speed = 0

  end

  def deliver_pizza(pizzas)
    pizzas.shift
    "Here is your #{pizza} pizza."
  end


end

# 1. DRIVER TESTS GO BELOW THIS LINE
pizzas = ["cheese", "pepperoni", "veggie", "sauasge"]
p fancy_car = Car.new("Toyota Camry", "Blue")
p fancy_car.distance = 0.25
p fancy_car.speed = 25
p fancy_car.stop
p fancy_car.direction = "right"
p fancy_car.distance = 1.5
p fancy_car.speed = 35
p fancy_car.speed = 15
p fancy_car.distance = 0.25
p fancy_car.stop
p fancy_car.direction = "left"
p fancy_car.distance = 1.4
p fancy_car.speed = 35
p fancy_car.stop
p fancy_car.distance
p fancy_car.deliver_pizza(pizzas)


# 5. Reflection