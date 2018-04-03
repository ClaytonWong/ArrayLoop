require 'pry' 
animals = ['ferret', 'dog', 'cat', 'moose', 'ostrich', 'emu', 'iguana', 'penguin', 'elephant']

# Print first animal then a comma than a space
animal_0 = animals[0]
print animal_0
print ', '

# Print second animal then a comma than a space
animal_1 = animals[1]
print animal_1
print ', '

# Print all animals with a comma and a space after each animal
# Also print array index before each animal
# Then put full stop after last animal
index = 0
last_index = animals.length - 1
animals.each do |animal|
    print "#{index} "
    print animal.upcase
    binding.pry #Pauses program
    unless index == last_index   
       print ', '
       index = index + 1
    end    
end
print '.'

# Same as above but with " .each_with_index" method used
animals.each_with_index do |animal, index|
    print "#{index} "
    print animal.upcase
    unless index == last_index   
       print ', '
       index = index + 1
    end    
end
print '.'

