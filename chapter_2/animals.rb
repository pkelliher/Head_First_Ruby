class Dog
    
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

# Creating new dog
dog = Dog.new
dog.name = "Ted"
dog.age = 1
dog.report_age
dog.talk
dog.move("bed")
