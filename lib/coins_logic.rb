#!/usr/bin/env ruby
require('pry') 

class Change 
  def initialize()
    @cents = []
  end 

  def currency(user_input)
    x = user_input.to_f * 100
    until (x < 1) 
      if x >= 25 # quarters 
       q = (x / 25).to_i 
       x %= 25 
       @cents.push(q)
      end
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
      # binding.pry
    end
  end

  def print_script
    puts "Welcome to our coin coverter sweet child, please enter the amount of money you have and we will convert it for you."
    user_input = gets.chomp
    puts currency(user_input)
    if @cents.length == 1
      puts "You have #{@cents[0]} pennies"
    elsif @cents.length == 2
      puts "You have #{@cents[0]} nickels, and #{@cents[1]} pennies"
    elsif @cents.length == 3 
      puts "You have #{@cents[0]} dimes, #{@cents[1]} nickels, and #{@cents[2]} pennies"
    else 
      puts "You have #{@cents[0]} quarters, #{@cents[1]} dimes, #{ @cents[2]} nickels, and #{@cents[3]} pennies."
    end
    puts "Would you like to convert another amount of change? Y or N"
    answer = gets.chomp
    if (answer == "y" || answer == "yes")
      print_script
    else 
      "have a great day!"
    end
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
# coins [25,10,5,1]
  # coins.map{|c| user_input/c; user_input %= c; } 
# end