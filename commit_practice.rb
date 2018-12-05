number_1 = 3
number_2 = 4

def multiply(num_1, num_2)
  num_1 * num_2
end

puts multiply(number_1, number_2)




puts 'Type in as many words as you want.'
puts 'One word per line.'
puts 'When you are done, leave the line blank and press enter.'

puts 'Type words:'
user_words = []

while true
  words = gets.chomp
  user_words.push(words)
  if words == ''
    break
  end
end

def sort user_words
  recursive_sort user_words, []
end

def recursive_sort unsorted_array, sorted_array
  #returns the sorted array once the unsorted
  if unsorted_array.length <= 0
    puts sorted_array
    return sorted_array
  end
  #this is where the sorted words go
  smallest = unsorted_array.pop
  still_unsorted = []
  #array is empty

  unsorted_array.each do |tested_word|
    if tested_word.downcase <= smallest.downcase
      still_unsorted.push smallest
      smallest = tested_word
    else
      still_unsorted.push tested_word
    end
end

sorted_array.push smallest
recursive_sort still_unsorted, sorted_array
end

puts sort(user_words)

#coming back with 1 less word than given words - must fix this

#puts(sort(['crazy', 'angus', 'monty', 'bella', 'bella']))

# puts 'Here they are sorted!'
# puts user_words.sort

# original array unsorted
# put each word one by one into sorted noun_array
# sorted words A - Z
# if word < word push into sorted array
