class Candidate
    attr_acessor :name, :age, :occupation, :hobby, :birthplace
    def initalize (name, age, occupation, hobby, birthplace)
        self.name = name
        self.age = age
        self.occupation = occupation
        self.hobby = hobby
        self.birthplace = birthplace
    end
end