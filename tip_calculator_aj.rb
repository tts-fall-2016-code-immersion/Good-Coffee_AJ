
#create a bill amount variable
bill_amount= 300

#create a method named tip_amount
def tip_amount(bill_amount)     #takes bill_amount as an argument
  return bill_amount * 0.2  #returns 20% of the total bill amount
  end
puts tip_amount(bill_amount).to_i #run method

#create a method that sums the bill amount + the tip amount
def gratuity_total(bill_amount) # takes bill_amount as an argument
  return bill_amount + (bill_amount * 0.2)
end

  puts "the total bill including gratuity is" +  gratuity_total(bill_amount)
