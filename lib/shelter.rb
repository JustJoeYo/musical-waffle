class Shelter
  attr_reader :name, :capacity, :pets 
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @pets = []
  end

  def add_pet(pet)
    @pets << pet
  end

  def call_pets
    @pets.map { |pet| pet + '!' }
  end

  def over_capacity?
    @pets.length > @capacity
  end

  def adopt
    # @pets.pop # could make it take the dog from the back of the line instead of the front
    @pets.shift
  end

end