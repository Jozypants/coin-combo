#!/usr/bin/env ruby
require('pry') 

class Change 
  def initialize()
    @cents = []
  end 

  def currency(user_input)
    x = user_input.to_f * 100
    # cents = [25, 10, 5, 1] # if we want to use an array to iterate through w/ a loop
    # coins = {:quarters => 25, }
    until (x < 1) 
        # if x >= 25 # quarters 
    #   q = (x / 25).to_i 
    #   x %= 25 # will change the value of x
    #   @cents.push(q)
      if x >= 10 #dimes 
        d = (x / 10).to_i
        x %= 10
        @cents.push(d)
      end
      if x >= 5
        n = ( x/5).to_i
        x %= 5
        @cents.push(n)
      end
      if x <= 4 #pennies
        c = (x/1).to_i
        x %= 1 
        @cents.push(c) 
      end
  
      #   # binding.pry
      # # elsif x % 25 == 0
      # #   q = (x/25).to_i
      # #   @cents.push(q)  
      # end 
    end
    @cents
  end
end


# today == ChristmasEve ? (puts "Santa's On His Way!") : (puts "Snow")
# ^^ shorthand if/else statements
# until the remainder of the value of x is < 1 loop through and divide by 25
# until (x == 0)
      # y = x % 25
      # w = y % 10
      # n = w % 5
      # p = n % 1

# coins [25,10,5,1]
#  def currency(user_input, coins)
  # coins.map{|c| user_input/c; user_input %= c; } 
# end