# Your code goes here!
class Anagram
    def initialize (word)
        @word = word
    end

    def match (array)
        return array.select { |input| match_solo(input)}
        # match_array = []
        # array.select { |input| match_solo(input)}
        #    if match_solo(input)
        #         match_array.push(input)
        #    end
        # end
        # return match_array
    end

    def match_solo (string) 
        string = string.chars
        word_chars = @word.chars
        return string.sort == word_chars.sort
    end
end

listen = Anagram.new("listen")
puts listen.match(%w[enlist google inlets banana])