# frozen_string_literal: true

class Matrix
  def initialize(input)
    @input = input
  end
  def rows
    # String#lines
    # String#each_line
    @rows ||= @input.each_line.map do |line|
        line.split.map(&:to_i)
    end
    # @input.lines.map do |line|
    #   line.split.map do |item|
    #     item.to_i
    #   end
    # end
  end

  def columns
    @columns ||= rows.transpose
    # @columns ||= (0...rows[0].size).map do |column|
    #   (0...rows.size).map do |row|
    #     rows[row][column]
    #   end
    # end
  end
end
