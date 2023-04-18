require_relative '../lib/word_counter_dictionnary'

describe "the only_one method" do
  it "should count the occurence of one word in a sentence"do
  expect(only_one("below", "below")).to eq({"below"=>1})
  expect(only_one("Howdy partner, sit down! How's it going?", "how")).to eq({"how"=>2,})
  end
end

describe "the word_counter method" do
  it "should count the occurence of each word in a sentence"do
  expect(word_counter("below", dictionnary)).to eq({"below"=>1, "low"=>1})
  expect(word_counter("Howdy partner, sit down! How's it going?", dictionnary)).to eq({"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1})
  end
end