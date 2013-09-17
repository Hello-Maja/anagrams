# require_relative '/db/words_first'

(File.open('db/words','r')).each do |word|
  Word.create(:word => word.chomp, :sorted_word => word.chomp.downcase.split(//).sort.join)
end

