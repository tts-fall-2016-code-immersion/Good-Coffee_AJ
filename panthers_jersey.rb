#inventory app
#Carolina Panthers Team Jerseys



panthers_jersey_hash = {
 'cam newton' => 45,
 'kelvin benjamin'=> 30,
 'thomas davis'=> 27,
 'luke kuechly' => 42,
 'greg olsen' => 24}

  puts "how many jerseys of each player do we have available?"

def display_inventory(panthers_jersey_hash)
  panthers_jersey_hash.each do |player, inventory|
  puts "#{player} has #{inventory} jerseys in stock"
end

def update_inventory(panthers_jersey_hash)
  puts "which item would you like to update?"
  update_item= gets.chomp
  puts "what is the new inventory amount?"
  update_value= gets.chomp.to_i
  panthers_jersey_hash.each do |player, inventory|
  puts "#{player} has #{inventory} jerseys in stock"
end


def add_inventory
  puts "Name the player to be added"
  add_name = gets.chomp
  puts "How many jerseys avaialable?"
  add_quanity = gets.chomp.to_i
  puts "#{add_quanity} #{add_name} jerseys have been added"
end


def delete_inventory()
  puts "what player would you like to remove?"
  remove_name = gets.chomp
  key = remove_name
  puts "#{remove_name} has been removed"
  panthers_jersey_hash.delete(key)
end

def action_loop
  while x > 0
  puts "what action would you like to take? display, update, add or delete?"
  user_entry= gets.chomp.downcase
  if user_entry == "display"
    display_inventory(panthers_jersey_hash)
  elsif user_entry == "update"
    update_inventory(panthers_jersey_hash)
  elsif user_entry == "add"
    add_inventory(panthers_jersey_hash)
  elsif user_entry == "delete"
    delete_inventory(panthers_jersey_hash)
  end
end

action_loop(panthers_jersey_hash)
