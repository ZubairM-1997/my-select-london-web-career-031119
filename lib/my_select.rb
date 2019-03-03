class Shelter   #have many dogs 
  attr_accessor :name, :city
  @@all = []

  def initialize (name, city)
    @name = name
    @city = city
    @dogs = [] 
    @@all << self 
  end 
  
  def add_dog(dog)
    dog.shelter = self
    @dogs << dog 
  end 
  
  def dogs 
    @dogs 
  end 
  
  def self.all 
    @@all
  end 
end 

class Dog  #belong to a shelter & an owner
  attr_accessor :name, :age, :breed, :shelter, :owner
  @@all = []
  
  def initialize(name, age, breed)
    @name = name
    @age = age
    @breed = breed 
    @@all << self 
  end 
  
  def self.all
    @@all
  end 
end 


class Owner # has many dogs 
  attr_accessor :name, :age
  attr_reader :dogs 
  @@all = []
  
   def initialize (name, age)
    @name = name
    @age = age
    @dogs = []
    @shelters = []
    @@all << self 
  end 
  
  def add_dog(dog)
    @dogs << dog 
    dog.owner = self 
  end 
  
  def shelters
    self.dogs.each do |dog| 
      @shelters << dog.shelter if dog.shelter
    end 
    @shelters
  end
  
  def self.all 
    @@all
  end 
end

nashville_shelter = Shelter.new("Humane Society", "Nashville")
shelter2 = Shelter.new("Adoptville", "New York")
jennifer = Owner.new("Jennifer", 28)
person2 = Owner.new("Kevin", 26)
toby = Dog.new("Toby", 8, "lab")
dog2 = Dog.new("Lucky", 5, "golden")
Shelter.all 
nashville_shelter.add_dog(toby)
jennifer.add_dog(toby)
jennifer.add_dog(dog2)
nashville_shelter.dogs 
jennifer.shelters.each{|shelter| puts shelter.name}