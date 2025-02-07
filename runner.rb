require "./lib/shelter.rb"

def adopt_pet(shelter)
  system("clear" || "cls")
  puts "Here are the pets available:"
  shelter.pets.each_with_index do |pet, index|
    puts "#{index + 1}: #{pet}"
  end

  shelter.adopt
  puts "\nYou have adopted a pet!" # should probably say which pet you got if I am not even letting them choose butttt ehhhhh
  sleep(2.7)
  system("clear" || "cls")
  menu
end

def list_pets(shelter)
  system("clear" || "cls")
  puts "Here are all the pets:"
  shelter.pets.each do |pet|
    puts pet
  end
  sleep(3)
  system("clear" || "cls")
  menu
end

def menu
  shelter = Shelter.new('Denver Animal Shelter', 3)
  shelter.add_pet('Salem')
  shelter.add_pet('Beethoven')
  shelter.add_pet('Spot')
  shelter.add_pet('Jonesy')

  puts "Welcome to the Denver Animal Shelter!"
  puts "1: Adopt a pet"
  puts "2: List all pets"
  puts "3: Exit"

  print "Please select an option: "
  user_input = gets.chomp.to_i

  case user_input # hahaha ruby works just like c++ cases, learned something new!
  when 1
    adopt_pet(shelter)
  when 2
    list_pets(shelter)
  when 3
    exit
  else
    puts "Invalid option"
    sleep(1.7)
    system("clear" || "cls")
    menu
  end
end


menu