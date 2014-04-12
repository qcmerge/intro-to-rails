class RomanNumeral
  NUMERALS = {C: 100, L: 50, X: 10, IX: 9, V: 5, IV: 4}
  def convert(num)
    numeral = ""
    NUMERALS.each do |key, value|
      while num >= value
        numeral << key.to_s
        num -= value
      end
    end
    numeral << "I" * num
  end
end
