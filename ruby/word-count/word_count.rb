# frozen_string_literal: true

class Phrase
  def initialize(input)
    @input = input
  end

=begin
  First working version pass all the tests
=end
  def word_count
    result = { }
    words = @input.downcase.split(/[,\s]/)
    words.each do |word|
      next if word.empty?
      word.gsub!(/\W/, '') unless word.include?("'t")

      if !result.key?(word)
        # puts "new key: #{word}"
        result[word] = 1
      else
        # puts "Accumulating on #{word}: #{result[word]} + 1
        result[word] += 1
      end
    end
    result
  end

=begin
  Refactored version where we improve by:
    - Removing defensive programming on key presence
      by using a hash with default value
    - scan (with boundaries) instead of split
    - each_with_object instead of initialize and
      return a hash
=end
  def word_count
    words = @input.downcase.scan(/\b[\w']+\b/)

    words.each_with_object(Hash.new(0)) do |word, result|
      result[word] += 1
    end
  end
end
