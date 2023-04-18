require_relative '../lib/caesar_cipher'

describe "the caesar_letter method" do
  it "should return a new letter shift by x in the alphabet" do
    expect(caesar_letter("a",3)).to eq("d")
    expect(caesar_letter("x",6)).to eq("d")
    expect(caesar_letter("x",6)).to eq("d")
  end

  it "should keep special character unmodified" do
    expect(caesar_letter("!",6)).to eq("!")
  end

  it "should keep letter case" do
    expect(caesar_letter("E",6)).to eq("K")
  end
end
  
describe "the caesar_cipher method" do
  it "should return a new string shifting by x for the alphabet only and keeping case" do
    expect(caesar_cipher("xyzabc",4)).to eq("bcdefg")
    expect(caesar_cipher("xYZabC",4)).to eq("bCDefG")
    expect(caesar_cipher("What a string!",5)).to eq("Bmfy f xywnsl!")
  end

  it "should explain to the user that we only want string" do
    expect(caesar_cipher(32.5,4)).to eq("We can't do anything for you...")
  end
end