require('rspec')
require('coins_logic')

describe('#currency') do 
  if("converts dollar amount to cents by bultiplying input by 100") do
    expect(currency(10.99)).to(eq(1099))
  end
end