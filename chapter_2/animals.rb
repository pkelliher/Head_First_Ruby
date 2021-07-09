class Bird
    def talk (name)
        puts "#{name} says Chirp! Chirp!"
    end
    def move (name, destination)
        puts "#{name} flies to the #{destination}."
    end
end

class Dog
    def make_up_name
        @name = "Sandy"
    end

    def talk
        puts "#{@name} says Bark!"
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

dog = Dog.new
dog.make_up_name
dog.talk

cat = Cat.new
cat_name = "Fluffy"
cat.talk(cat_name)
cat.move(cat_name, "litter box")

bird = Bird.new
bird_name = "Tweety"
bird.talk(bird_name)
bird.move(bird_name, "tree")
