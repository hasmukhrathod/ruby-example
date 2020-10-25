=begin 
This example creates a person. 
Allow them to become friends of each others. 
We can define their hobbies. 

We can ask person to tell us their friends.
We can ask person to tell us their friends's hobbies.
=end

class Person
    ##all the person will be people
    PEOPLE = []
    
    ##to ask person about their name, friends, hobbies etc.
    attr_reader :name, :friends, :hobbies

    ##Person will be created with its name & age.
    def initialize(name, age)
        @name = name
        @age = age
        ##Person may have friends & hobbies.
        @friends = []
        @hobbies = []
        PEOPLE << self
    end
    def has_friend(friend)
        @friends << friend
    end
    def has_hobby(hobby)
        @hobbies << hobby
    end
end

## Create 3 persons.
hasmukh = Person.new("hasmukh", 34)
ashok = Person.new("ashok", 32)
pt = Person.new("pt", 32)


##make them friends.
hasmukh.has_friend(ashok)
hasmukh.has_friend(pt)

##define their hobbies.
hasmukh.has_hobby("Reading")
hasmukh.has_hobby("Cycling")
ashok.has_hobby("Driving")
ashok.has_hobby("Running")
pt.has_hobby("Joking")
pt.has_hobby("Listening")

##Print hasmukh's friends
hasmukh.friends.map {|x| puts x.name}

##Print hasmukh's friends's hobbies
hasmukh.friends.map {|x| puts "Hobbies of #{x.name} : #{x.hobbies}"}