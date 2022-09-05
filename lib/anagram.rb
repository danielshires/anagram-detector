# Your code goes here!

class Anagram

    attr_accessor :word

    def initialize(word)
      @word = word
    #   @word = ab
    end

    def match(array_of_possible_anagrams)
        # This array uses select to filter to search through the array
        # It splits the word into letters, and then sorts the letters alphabetically
        # array_of_possible_anagrams.select { |possible_anagram| possible_anagram.split("").sort() == @word.split("").sort()}
        returnarray_of_possible_anagrams.select do |possible_anagram|
            possible_anagram.split("").sort == @word.split("").sort
        end
    end


end

listen = Anagram.new("listen")
p listen.match(["balls"])
