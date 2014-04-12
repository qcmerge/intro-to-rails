require_relative 'roman_numeral'

describe RomanNumeral do
  subject(:converter) { RomanNumeral.new }

  it "converts 1 to I" do
    expect(converter.convert(1)).to eq "I"
  end

  it "converts 2 to II" do
    expect(converter.convert(2)).to eq "II"
  end

  it "converts 3 to III" do
    expect(converter.convert(3)).to eq "III"
  end

  it "converts 5 to V" do
    expect(converter.convert(5)).to eq "V"
  end

  it "converts 6 to VI" do
    expect(converter.convert(6)).to eq "VI"
  end

  it "converts 7 to VII" do
    expect(converter.convert(7)).to eq "VII"
  end

  it "converts 4 to IV" do
    expect(converter.convert(4)).to eq "IV"
  end

  it "converts 10 to X" do
    expect(converter.convert(10)).to eq "X"
  end

  it "converts 9 to IX" do
    expect(converter.convert(9)).to eq "IX"
  end

  it "converts 11 to XI" do
    expect(converter.convert(11)).to eq "XI"
  end

  it "converts 20 to XX" do
    expect(converter.convert(20)).to eq "XX"
  end

  it "converts 14 to XIV" do
    expect(converter.convert(14)).to eq "XIV"
  end

  it "converts 15 to XV" do
    expect(converter.convert(15)).to eq "XV"
  end

  it "converts 16 to XVI" do
    expect(converter.convert(16)).to eq "XVI"
  end

  it "converts 19 to XIX" do
    expect(converter.convert(19)).to eq "XIX"
  end

  it "converts 30 to XXX" do
    expect(converter.convert(30)).to eq "XXX"
  end

  it "converts 24 to XXIV" do
    expect(converter.convert(24)).to eq "XXIV"
  end

  it "converts 25 to XXV" do
    expect(converter.convert(25)).to eq "XXV"
  end

  it "converts 26 to XXVI" do
    expect(converter.convert(26)).to eq "XXVI"
  end

  it "converts 29 to XXIX" do
    expect(converter.convert(29)).to eq "XXIX"
  end

  it "converts 50 to L" do
    expect(converter.convert(50)).to eq "L"
  end

  it "converts 100 to C" do
    expect(converter.convert(100)).to eq "C"
  end
end
