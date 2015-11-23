#INPUT: List of names
#  create a empty container object called accountability_group that will eventually contain all the accountability #groups
#  shuffle the list of names to randomize which order they appear in
#  store the shuffled names into a empty container object called shuffle_list
#  For each person in the list THEN
#       create a new sub container every four spots
#  END FOR
#  OUTPUT: Return the accountability_group container

acct_group_people = [
"Jack Abernethy",
"Mohammad Amin",
"Zollie Barnes",
"Reuben Brandt",
"Dana Breen",
"Breton Burnett",
"Saundra Vanessa Castaneda",
"Luis De Castro",
"Nicolette Chambers",
"Kerry Choy",
"Nick Davies",
"Katherine DiAngelo",
"Adrian Diaz",
"David Diaz",
"Bob Dorff",
"Michael Du",
"Paul Dynowski",
"Jenna Espezua",
"Sean Fleming",
"Marcel Haesok",
"Albert Hahn",
"Arthur Head",
"Jonathan Huang",
"Thomas Huang",
"Alex Jamar",
"Kevin Jones",
"Steven Jones",
"Coleby Kent",
"Caroline Kenworthy",
"Calvin Lang",
"Yi Lu",
"David Ma",
"Sean Massih",
"Tom McHenry",
"Alex Mitzman",
"Lydia Nash",
"Brenda Nguyen",
"Matthew Oppenheimer",
"Mason Pierce",
"Joe Plonsker",
"Mira Scarvalone",
"Joseph Scott",
"Chris Shahin",
"Benjamin Shpringer",
"Lindsey Stevenson",
"Philip Thomas",
"Gary Tso",
"Ting Wang",
"Clinton Weber",
"Monique Williamson",
"Regina Wong",
"Hanah Yendler"
]

def shuffle_names(list_of_people)
   shuffle_list = list_of_people.shuffle
end

shuffled_names = shuffle_names(acct_group_people)

def add_members_to_groups(list_of_people)
    accountability_groups = []

      list_of_people.map do |person|
         accountability_groups = list_of_people.each_slice(4).to_a
      end
      accountability_groups
end

add_members_to_groups(shuffled_names)

=begin
REFLECTION
What was the most interesting and most difficult part of this challenge?
I originally approached this problem from a more mathmatically angle. Which lead to a very brittle solution, with a lot of repetition in my code. Once I realized that what I was fundamentally trying to do was:
  a.) Randomize the order the list of names appear
  b.) add the list of names to groups between 3 and 5

It became clear that I chould use some built in Ruby methods to accomplish that goal.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
I feel pretty good about my pseudo code. What I still am improving on is translating that pseudo code to more concise solutions. So it's a work in progress.

Was your approach for automating this task a good solution? What could have made it even better?
I think my refactored approach to automating this task was a great solution. I would have liked to see if I could have created a new array(not a sub array) dynamically when a group filled up. It would have made it easier to format a string in order to print out the names of all the people in the different groups.

What data structure did you decide to store the accountability groups in and why?
I went back and forth on choosing the data structrure. However, once I figured out how to create sub arrays I abandoned the idea of using a hash. Overall, I felt that using an array was the best choice because you could just define the point in which you wanted to create a new sub array, and then keeping doing that until you have everyone sorted into a group.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
When I refactored I decieded to practice passing a method to another method. We had to do it in this weeks GPS session, and I wanted to reinforce that concept. I also learned about .each_slice(n). That method was a life saver! It made it very easy to just define a breakpoint, and voila you have a new accountaiblity group.
=end

=begin
INPUT: Obtain a container object with a collection of student names
create 11 empty container objects that will store the names of the people in each accountaiblity group
    FOR each person in the list THEN
        create a random number 1-11
        If the number is equal to a accountability group that has less than 5 people THEN
          place that  person in the group
        END IF
    END FOR

OUTPUT: Print out the names in each accountability group
=end

=begin
def accountability_group(people)
   acct_group = nil
   group_1  = []
   group_2  = []
   group_3  = []
   group_4  = []
   group_5  = []
   group_6  = []
   group_7  = []
   group_8  = []
   group_9  = []
   group_10 = []
   group_11 = []

   people.each do |person|
    acct_group  = rand(1..11)

      if (acct_group == 1 && group_1.length < 5 || group_1.length < 3)
        group_1 << person
      elsif (acct_group == 2 && group_2.length < 5 || group_2.length < 3)
         group_2 << person
      elsif (acct_group == 3 && group_3.length < 5 || group_3.length < 3)
         group_3 << person
      elsif (acct_group == 4 && group_4.length < 5 || group_4.length < 3)
         group_4 << person
      elsif (acct_group == 5 && group_5.length < 5 || group_5.length < 3)
         group_5 << person
      elsif (acct_group == 6 && group_6.length < 5 || group_6.length < 3)
         group_6 << person
      elsif (acct_group == 7 && group_7.length < 5 || group_7.length < 3)
        group_7 << person
      elsif (acct_group == 8 && group_8.length < 5 || group_8.length < 3)
        group_8 << person
      elsif (acct_group == 9 && group_9.length < 5 || group_9.length < 3)
        group_9 << person
      elsif (acct_group == 10 && group_10.length < 5 || group_10.length < 3)
        group_10 << person
      elsif (acct_group == 11 && group_11.length < 5 || group_11.length < 3)
        group_11 << person
      end
    end
      p "These are the members in Group 1 #{group_1}."
      p "These are the members in Group 2 #{group_2}."
      p "These are the members in Group 3 #{group_3}."
      p "These are the members in Group 4 #{group_4}."
      p "These are the members in Group 5 #{group_5}."
      p "These are the members in Group 6 #{group_6}."
      p "These are the members in Group 7 #{group_7}."
      p "These are the members in Group 8 #{group_8}."
      p "These are the members in Group 9 #{group_9}."
      p "These are the members in Group 10 #{group_10}."
      p "These are the members in Group 11 #{group_11}."
end

accountability_group(acct_group_people)
=end




