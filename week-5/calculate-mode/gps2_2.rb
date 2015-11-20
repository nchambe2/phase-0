# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
=begin
CREATE a method called create_list which takes a container object that holds a collection of grocery items
SET the container object equal to each word in the collection
    Split the words based on the spaces within the orignal word
CREATe a empty hash that will hold each item in the groccery list, along with a amount of 1

FOR each groccery item store the item as a key THEN
    set the amount for each groccery list as 1
Then return the groccery list
=end


def create_list(groccery_items)
  groccery_items = groccery_items.split(" ")

  shopping_list = {}

  groccery_items.each { |l|  shopping_list[l] = 1}

  p shopping_list
end

create_list_items = create_list("milk almond pears")

# Method to add an item to a list
# input: item name and optional quantity
# steps:
=begin
CREATE a method called add_item that takes the original shopping list of items and adds an additional item to that list
Add the item to the original shopping list and set it to a default value of 1
=end
# output:


def add_item(groccery_items, item)
   groccery_items[item] = 1
   p groccery_items
end

add_item_list = add_item(create_list_items, "apples")

# Method to remove an item from the list
# input: Obtain the container object that has the collection of updated groccery items
# steps:
=begin
CREATE a method called remove_item which takes a parameter with the newly updated groccery lists and the item you want to delete from the container object
Delete the item from the hash
=end
# output: return the container object with the item removed from the groccery list

def remove_item(groccery_items, key)
  groccery_items.delete(key)
  p groccery_items
end

removed_item_list = remove_item(add_item_list, "almond")
# Method to update the quantity of an item
# input: obtain a container object that has the groccery list with the removed items
# steps: CREATE a method called update_item that takes three parameters. The first one is the groccery list with a removed item, the item you want to change the quantity for, and the amount you want to update the item to.
# output: return the container object with the updated value

def update_item (groccery_items, key, update_value)

   groccery_items[key] = update_value
   p groccery_items
end

update_items_list = update_item(removed_item_list, "apples", 4)

#Method to print a list and make it look pretty
# input: Obtain the newly updated groccery list
# steps: CREATE a method called print_list that takes the argument of a updated grocery list.
# output: Print I plan to buy <amount> <item>."

def print_list(update_items_list)
  update_items_list.each do |key, value|
      p "I plan to buy #{value} #{key}."
  end
end

print_list(update_items_list)

=begin
Pseudocoding for me with others is hard because I always feel like the pseudocoding part takes me too long to complete. Generally, I rush that part with my pair, and then jump straight into coding. After we finished the challenge I went back and improved my pseudocode. I would love to know how much is a appropriate time to actually pseudocode with your pair.

Arrays are great container objects for storing ordered items. While hashes are better for keeping track of non-orderd items. If I had chosen to use an array creating, adding,and deleting items from the list would have been pretty easy to do since there are a lot of built in array methods that do it for you.

However, I chose to use a Hash because each item in the list corresponded with a certain amount. Using a hash made it easier to keep track of the amount per item. Doing that for an array would have been harder. Since items are arranged by order within the array, not based on value.

Methods will return the last expression evaluated, unless an explicit return has been declared somewhere else in the method.

You can declare parameter(s) in your method definitions. These parameters act as containers for values passed via method calls. Unlike other languages Ruby doesn't force you to declare the type of item that will be stored in a parameter, it just grasps on to what you give it. So you can pass integers, floats, strings, container objects (arrays and hashes), and other methods.

In other to pass information betwen methods you have to store the method call in a variable. You can then pass this variable as a argument to another method.

Before this I didn't know how to pass inormation from one method to another. So I was excited to learn this concept. I'm very curious about if someone did choose to use an array, how they would go about creating a clean solution.

=end