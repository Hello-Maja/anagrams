class Word < ActiveRecord::Base
  # Remember to create a migration!

   
  def self.anagrams_for(string)
      new_array = []
      dictionary = Word.where("sorted_word = '#{string.chomp.downcase.split(//).sort.join}'")
      dictionary.each do |word|
        new_array << word 
      end
    new_array
  end 
end
