class PetOwner
    # our properties or attributes
    attr_accessor :age
    attr_reader :name, :pets

    # the first method automatically called in the .new class method call
    def initialize(name, age)
        @name = name
        @age = age
        @pets = []
    end


    # this is actionable methods that your instances can do
    def buy_pet(pet)
        self.pets.push(pet)
        pet.owner = self
    end

    def walk_pets
        self.pets.each {|pet| pet.mood = "Happy"}
    end

    def feed_pets
        self.pets.each {|pet| pet.mood = "full"}
    end

    # self is the instance that calls this instance method
    def check_for_self
        self
    end

    # self is the class that calls this class method
    def self.check_for_self
        self
    end
end