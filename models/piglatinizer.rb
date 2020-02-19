class PigLatinizer
  
  @@VOWELS = ['a','i','o','u','e']

  def piglatinize(word)
    pigarray = word.split
  
    new = pigarray.collect do |a_word|
      first_vowel_i = a_word.split('').find_index do |char|
        ['a','e','i','o','u'].include?(char.downcase)
      end
  
      if first_vowel_i == 0
        a_word << "way"
      elsif !first_vowel_i
        a_word = "#{a_word[0...first_vowel_i]}ay"
      else
        a_word[first_vowel_i...a_word.length] << "#{a_word[0...first_vowel_i]}ay"
      end
    end
  
    new.join(" ")
  end

end

