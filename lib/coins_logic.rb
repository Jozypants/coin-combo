#!/usr/bin/env ruby
require('pry') 

class Change 
  # def initialze()
  #   @cents = []
  # end 

  def currency(user_input)
    x = user_input.to_f * 100
    cents = []
    # until (x % < 1)
    # until (x <= 1) ??  Jozy u right, it will never equal 0, it will always at least = 1. 
      if x % 25 != 0 # quarters 
        y = (x % 25).to_f
        x = (x / 25).to_i  
        cents.push(x)
        # if y > 0 #dimes 
        #   #do something
        # end
      else (x % 25 == 0)
        x = (x/25).to_i
        cents.push(x)
      end 
    # end
    cents
  end
end

# how does change work?
#   $1.56 in change = 6 Q, 1 N & 1 P
#   $1.56 x 100 = 156
#   156 / 25 = 6 quarters w/ a remainder of .24, the remainder of .24 is .24 of 25
#   .24 * 25 = 6 (amount left over from 1.56 & then we make it a whole number so we can divide it by 10, 5 & 1)
#   6 / 5 = 1 nickle w/ a remainder of .2
#   .2 * 5 = 1 
#   1/1 = 1 penny


# until the remainder of the value of x is < 1 loop through and divide by 25
# until (x == 0)
      # y = x % 25
      # w = y % 10
      # n = w % 5
      # p = n % 1