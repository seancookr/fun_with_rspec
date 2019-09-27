class IntegerToHuman
  SMALL = %w(zero one two three four five six seven eight nine ten
             eleven twelve thirteen fourteen fifteen sixteen seventeen
             eighteen nineteen
            )

  TENS = %w(wrong wrong twenty thirty forty fifty sixty seventy eighty ninety)
  class << self
    def to_human integer
      if integer < 20
        SMALL[integer]
      elsif integer < 100
        div, mod = integer.divmod(10)
        TENS[div] + (mod.zero? ? '' : "-#{to_human(mod)}")
      elsif integer < 1000
        div, mod = integer.divmod(100)
        SMALL[div] + ' hundred' + (mod.zero? ? '' : ' and ' + to_human(mod))
      elsif integer < 1_000_000
        div, mod = integer.divmod(1000)
        to_human(div).gsub(' and ', ' ') + ' thousand' + (mod.zero? ? '' : (mod < 100 ? ' and ' : ' ') + to_human(mod))
      else
        'one million'
      end
    end
  end
end
