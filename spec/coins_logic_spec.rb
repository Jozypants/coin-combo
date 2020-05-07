require('rspec')
require('coins_logic')

describe('Change#currency') do 
  it("converts dollar amount to cents by multiplying input by 100") do
    change = Change.new()
    expect(change.currency("1.00")).to(eq([4]))
  end
  it("divides converted amount by largest coin amnt 25 - quarters & gives the remainder") do
    change = Change.new()
    expect(change.currency("1.66")).to(eq([6]))
  end
  it("divides converted amoutn by the next largest coin amount 10 - dimes and gives the remainder") do 
    change = Change.new()
    expect(change.currency("1.66")).to(eq([6, 1]))
end

