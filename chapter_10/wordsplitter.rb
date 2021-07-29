class WordsSplitter

    attr_accessor :string

    def each
        string.split(" ").each do |word|
            yield word
        end
    end

end

splitter = WordsSplitter.new
splitter.string = "one two three four"

splitter.each do |word|
    puts word
end