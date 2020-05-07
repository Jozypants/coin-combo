#!/usr/bin/env ruby
require('pry') 

class Change 
  def initialze(user_input, cents)
    @user_input = user_input
    @cents = []
  end 

  def currency(user_input)
    user_input * 100
  end
end