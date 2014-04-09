require 'byebug'

class RomanNumeral

  NUMERALS = {
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4
  }

  def convert(int)
    numeral = ""
    NUMERALS.each do |key, value|
      while int >= value
        int -= value
        numeral << key
      end
      numeral
    end
    numeral << "I" * int
  end
end
