**What does puts do?**
Puts prints out the evaluated code and returns nil.

**What is an integer? What is a float?**
An integer is a whole number that doesn't contain any decimal points.
While a float is a number that contain decimal points.

**What is the difference between float and integer division? **
The difference between float and integer division is the number that is returned. Integer division will only return whole numbers even if that isn't entirely accurate. For instance, 2/3 is actually 0.66 however, since integers don't use decimal points the number is rounded down to zero. Float division however, will return the remainder.

**How would you explain the difference to someone who doesn't know anything about programming?**
Integer division is good to use when a whole number can only be returned. For instance, let's say you wanted to purchase some toy blocks. You only have $9 with you. Each block cost $2 each. You would only be able to purchase 4 toy blocks since there isn't a way for the store to sell you 4 and 1/2 blocks.

Float point division is good to use when you need the remainder of the calculation also returned. For instance, let's say you have 9 cookies, and two very hungry people. Each person wants a equal share of the cookies. In order to determine that you would divide 9.0/2.0. Which would return the remainder 4.5. So each person would get four whole cookies, and break the last cookie in half.

**How many hours are in a year**
*In a normal year there are 8760 hours.

```ruby
p 24 * 365
```

*In a leap year there are 8784 hours.

```ruby
p 24 * 366
```

**How many minutes in a decade**
*There are 5,256,000 in a decade.

```ruby
p 60 * 24 # multiply the minutes in a hour by the minutes in a full day
p 365 * 10 # multiply the days in one year by 10
p 1440 * 3650 # multiply the number of total minutes in a day by the total number of days in a decade(didn't account for leap years)
```
**What are strings? Why and when would you use them?**

Strings are groups of letters, punctations, and symbols.
You use strings to represent textual information. For instance, you would use a string if you wanted to include instructions in your program.

**What are local variables? Why and when would you use them?**


Variables store information that can be referenced and manipulated by a program later.

Local variables scope(availability to be used) only extends to the end of the method it's contained in, or until the program is finished executing.

**How was this challenge? Did you get a good review of some of the basics?**
I think this challenge was a really good review of Ruby Basics. Something I hadn't thought about before until I read Chris Pines book was the difference between integer and floating point division. Even though it's a really simple concept, I hadn't really thought about when to use which one. I also found the Well Grounded Rubyist to be a really good book. There was a lot of good information in there that I didn't really know about before.

**4.2.1 Defining Variables**
[Defining Variables] (https://github.com/nchambe2/phase-0/blob/master/week-4/defining-variables.rb)

**4.2.2 Simple String Methods**
[Simple String Methods] (https://github.com/nchambe2/phase-0/blob/master/week-4/simple-string.rb)

**4.2.3 Local Variables and Basic Arithmetical Expressions**
[Local Variables and Basic Arithmetical Expressions] (https://github.com/nchambe2/phase-0/blob/master/week-4/basic-math.rb)


