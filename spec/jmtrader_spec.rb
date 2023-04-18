require_relative '../lib/jmtrader'

describe " the day-trader method " do
  it "should select the best day to buy and the best day to sell" do
  expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])
  expect(day_trader([15, 8, 19, 12, 6, 21, 7, 18, 10])).to eq([4,5])
  end
end