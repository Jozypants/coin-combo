#!/usr/bin/env ruby
require('pry') 

class Change 
  def initialze()
    @cents = []
  end 

  def currency(user_input)
    user_input.to_f * 100
  end
end