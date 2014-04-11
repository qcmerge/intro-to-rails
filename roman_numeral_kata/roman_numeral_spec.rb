require_relative 'roman_numeral'

describe RomanNumeral do
  subject(:converter) { RomanNumeral.new }

  it "converts 1 to I" do
    expect(converter.convert(1)).to eq "I"
  end

  it "converts 2 to II" do
    pending
    expect(converter.convert(2)).to eq "II"
  end

  it "converts 2 III" do
    pending
    expect(converter.convert(3)).to eq "III"
  end

  it "converts 5 to V" do
    pending
    expect(converter.convert(5)).to eq "V"
  end

  it "converts 6 to VI" do
    pending
    expect(converter.convert(6)).to eq "VI"
  end

  it "converts 7 to VII" do
    pending
    expect(converter.convert(7)).to eq "VII"
  end

  it "converts 4 to IV" do
    pending
    expect(converter.convert(4)).to eq "IV"
  end

  it "converts 10 to X" do
    pending
    expect(converter.convert(10)).to eq "X"
  end

  it "converts 9 to IX" do
    pending
    expect(converter.convert(9)).to eq "IX"
  end

  it "converts 11 to XI" do
    pending
    expect(converter.convert(11)).to eq "XI"
  end

  it "converts 20 to XX" do
    pending
    expect(converter.convert(20)).to eq "XX"
  end

  it "converts 14 to XIV" do
    pending
    expect(converter.convert(14)).to eq "XIV"
  end

  it "converts 15 to XV" do
    pending
    expect(converter.convert(15)).to eq "XV"
  end

  it "converts 16 to XVI" do
    pending
    expect(converter.convert(16)).to eq "XVI"
  end

  it "converts 19 to XIX" do
    pending
    expect(converter.convert(19)).to eq "XIX"
  end

  it "converts 30 to XXX" do
    pending
    expect(converter.convert(30)).to eq "XXX"
  end

  it "converts 24 to XXIV" do
    pending
    expect(converter.convert(24)).to eq "XXIV"
  end

  it "converts 25 to XXV" do
    pending
    expect(converter.convert(25)).to eq "XXV"
  end

  it "converts 26 to XXVI" do
    pending
    expect(converter.convert(26)).to eq "XXVI"
  end

  it "converts 29 to XXIX" do
    pending
    expect(converter.convert(29)).to eq "XXIX"
  end
end
