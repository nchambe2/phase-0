#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [1.5] hours on this challenge.

# Pseudocode

=begin
CREATE NameData classes
  WHEN a new instance of the NameData class
       obtains a name
    END

    CREATE a behavior called initialize
        When a new instance is created then the name will be saved in a instance container object
    END
END

CREATE Greetings classes
  CREATE a new instance of NameData
  CREATE a behavior called salutation
      greets the person by name
  END
END
=end

class NameData
  attr_reader :name

    def initialize(name)
        @name = name
    end
end

class Greeting

  def initialize
    @name_info = NameData.new("Nicolette")
  end

    def hello
      "Hello #{@name_info.name}! How wonderful to see you today."
    end
end

greeting = Greeting.new
greeting.hello



# Reflection
=begin
What are these methods doing?
The initialize method sets the default values of the instance variables.
The what_is_* methods are returning the values of the instance variables.
While the change_my_* methods allow you to reset the instance method values.

How are they modifying or returning the value of instance variables?
Inside of the what_is_* methods are the instance variables respectively for name, occupation, and age.
Since they are the only expression within the method, when the method is called the value contained inside of the instance variable is returned.
The change_my_* methods take in an parameter. This allows the value of the instance variable to be set externally. The parameter value is then assigned to the instance variable value.

+++++++++++++++++++++++++++++RELEASE 2+++++++++++++++++++++++++++
What changed between the last release and this release? What was replaced?
The what_is_age method was removed, and replaced with an attr_reader method. The method call on the instance object was renamed to age.

Is this code simpler than the last?
Having so many reader/writer methods inside of the class makes it longer and more complex than it really is.
Using attr_reader simplifys the program.
Also, the method call is more semantic.

+++++++++++++++++++++++++++++RELEASE 3+++++++++++++++++++++++++++
What changed between the last release and this release? What was replaced?
The change_my_age= method was removed, and replaced with an attr_writer method. The method on the isntance object was renamed to age=.

Is this code simpler than the last?
Yes, the code is shorter, and the method names are more semantic.


+++++++++++++++++++++++++RELEASE 6+++++++++++++++++++++++++++++++
What is a reader method?
A reader method returns the value of the instance method stored inside of it. This allows the program to access the value of a instance variable without changing the value of that instance variable.

What is a writer method?
A writer method allows you to set or reset the value of a instance variable.

What do the attr methods do for you?
Attr methods come in three varieties:
attr_reader(short hand way of creating a reader method)
attr_writer(short hand way of creating a writer method)
attr_accessor(short hand way of creating both reader and writer methods )

Should you always use an accessor to cover your bases? Why or why not?
While tempting you should only create an accessor method when you know you explicitly need a writer and reader method.
Otherwise it's best to create just one or the other.
The risk you run in creating a writer method when you don't need it is that now other parts of the program can access and change your instance variables in unexpected ways.

What is confusing to you about these methods?
I don't think the material was confusing. Just getting comfortable with passing data between classes, and creating new instances of a class within another class.
=end