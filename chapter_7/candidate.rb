class Candidate
    attr_accessor :name, :age, :occupation, :hobby, :birthplace
    def initalize (name, age, occupation, hobby, birthplace)
        self.name = name
        self.age = age
        self.occupation = occupation
        self.hobby = hobby
        self.birthplace = birthplace
    end
end

def print_summary (candidate)
    puts "Candidate: #{candidate.name}"
    puts "Age: #{candidate.age}"
    puts "Occupation: #{candidate.occupation}"
    puts "Hobby: #{candate.hobby}"
    puts "Birthplace: #{candidate.birthplace}"
end

candidate = Candidate.new("Carl Barnes", 49, "Attorney", nil, "Miami")
print_summary(candidate)
