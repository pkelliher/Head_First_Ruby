class Bird
    # talk bird method
    def talk (name)
        puts "#{name} says Chirp! Chirp!"
    end
    def move (name, destination)
        puts "#{name} flies to the #{destination}."
    end
end

class Dog
    
    attr_accessor :name, :age

    def report_age
        puts "#{@name} is #{@age} years old."
    end

    def talk
        puts "#{@name} says Bark!"
    end

    def move(destination)
        puts "#{@name} runs to the #{destination}."
    end

end

class Cat
    def talk (name)
        puts "#{name} says Meow!"
    end
    def move(name, destination)
        puts "#{name} runs to the #{destination}."
    end
end

fido = Dog.new
fido.name = "Fido"
fido.age = 2
rex = Dog.new
rex.name = "Rex"
rex.age = 3
fido.report_age
rex.report_age


# cat = Cat.new
# cat_name = "Fluffy"
# cat.talk(cat_name)
# cat.move(cat_name, "litter box")

# bird = Bird.new
# bird_name = "Tweety"
# bird.talk(bird_name)
# bird.move(bird_name, "tree")
