require('rspec')
require('coins_logic')

describe('Change#currency') do 
  it("converts dollar amount to cents by multiplying input by 100") do
    change = Change.new()
    expect(change.currency("10.99")).to(eq(1099))
  end
  it("divides converted amount by largest coin amnt 25 - quarters & gives the remainder") do
    change = Change.new()
    expect(change.currency(1.56)).to(eq(6.24))
  end
end

