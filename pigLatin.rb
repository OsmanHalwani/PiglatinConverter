

puts "Welcome to the pig latin traslator"

def convert(word)
  vowels = ['a', 'e' , 'i','o','u']

  array_letter = word.split("")


  array_letter.length.times do |i|
#  foundVowel = vowels.any?{|vowel| vowel == array_letter[i]}
  if vowels.any?{|vowel| vowel == array_letter[i]}

    valuesBeforeVowel = array_letter.slice!(0...i)
    array_letter.push(valuesBeforeVowel)
    array_letter.push('a','y')
    array_letter.flatten!
    word = array_letter.join
    return word
    break

    end#end if

  end # end loop

end # end method

print "enter a sentence: "

word = gets.chomp
word = word.split(" ")

word.each do |memo|
print convert(memo) + " "
end
