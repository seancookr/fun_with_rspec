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
      else
        div, mod = integer.divmod(10)
        TENS[div] + (mod.zero? ? '' : "-#{to_human(mod)}")
      end
    end
  end
end
