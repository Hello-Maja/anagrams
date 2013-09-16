# require_relative '/db/words_first'

(File.open('db/words_first','r')).each do |word|
  Word.create(:word => word.chomp.downcase, :sorted_word => word.chomp.split(" ").sort.join)
end

