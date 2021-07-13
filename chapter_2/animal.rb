# Animal Super class
class Animal
    
    attr_reader :name, :age

    def name= (value)
        if value == ""
            raise "Name can't be blank!"
        else
            @name = value
        end
    end

    def age= (value)
        if value < 0
            raise "An age of #{value} isn't valid!"
        else
            @age = value
        end
    end

    def move(destination)
        puts "#{@name} runs to the #{destination}."
    end

    def talk
        puts "#{@name} says Bark!"
    end

    def report_age
        puts "#{@name} is #{@age} years old."
    end

end

# Dog sub class
class Dog < Animal
    def to_s
    "#{@name} the dog, age #{age}"
    end
end

# Bird sub class
class Bird < Animal
    def talk
        puts "#{@name} says Chirp! Chirp!"
    end
end

# Cat sub class
class Cat < Animal
    def talk
        puts "#{@name} says Meow!"
    end
end

class Armadillo < Animal
    def move(destination)
        puts "#{@name} unrolls!"
        super
        end
end

# Dog
lucy = Dog.new
lucy.name = "Lucy"
lucy.age = 4

rex = Dog.new
rex.name = "Rex"
rex.age = 2

puts lucy, rex

# Cat
whiskers = Cat.new
whiskers.name = "Whiskers"
fido = Dog.new
fido.name = "Fido"
polly = Bird.new
polly.name = "Polly"

# Bird
polly.age = 2
polly.report_age
fido.move("yard")
whiskers.talk
polly.talk

# Armadillo
dillon = Armadillo.new
dillon.name = "Dillon"
dillon.move("burrow")

