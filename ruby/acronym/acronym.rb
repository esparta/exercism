# frozen_string_literal: true

require 'pry'
module Acronym
  class << self
    def abbreviate(string)
      string.scan(/\b\w/).join.upcase
    end
  end
end

