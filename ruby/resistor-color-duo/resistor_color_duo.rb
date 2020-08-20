
module ResistorColorDuo
  class << self
    COLORS = %w(
      black brown red orange yellow green blue
      violet grey white
    )
    def value(values)
      first, second, _ = values
      (10 * COLORS.index(first)) +
        COLORS.index(second)
    end
  end
end
