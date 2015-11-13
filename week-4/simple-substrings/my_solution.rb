# Simple Substrings
=begin
INPUT: Obtains a address

  IF word in street address is equal to CA THEN
    print "Welcome to California"
  ELSE
    print "You should move to California"

OUTPUT: Returns "Welcome to California" if the address is CA. Otherwise returns "You should move to California"
=end

# I worked on this challenge [by myself].


# Your Solution Below

def welcome(address)

    if address.include? "CA"
      p "Welcome to California"
    else
      p "You should move to California"
    end

end

