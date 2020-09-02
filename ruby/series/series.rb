=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series
  def initialize(input)
    @input = input
  end

  def slices(n)
    raise ArgumentError if n > @input.length

    (0..@input.length-n).map do |index|
      @input[index, n]
    end
    # @input.length.times.map do |item|
    #   slice = @input[item, n]
    #   slice if slice.length == n
    # end.compact
  end
end

