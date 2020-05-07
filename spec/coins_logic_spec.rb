require('rspec')
require('coins_logic')

describe('Change#currency') do 
  it("converts dollar amount to cents by multiplying input by 100 and finding amount in pennies") do
    change = Change.new()
    expect(change.currency(".04")).to(eq([4]))
  end
  it("converts dollar amount to cents by multiplying input by 100 and finds amount in nickels & in pennies") do
    change = Change.new()
    expect(change.currency(".09")).to(eq([1, 4]))
  end

end
# it("divides converted amoutn by the next largest coin amount 10 - dimes and gives the remainder") do 
#   change = Change.new()
#   expect(change.currency("1.66")).to(eq([6, 1]))
# end
# it("divides converted amount by largest coin amnt 25 - quarters & gives the remainder") do
#   change = Change.new()
#   expect(change.currency("1.04")).to(eq([4]))
# end
