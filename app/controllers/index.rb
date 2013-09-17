get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/' do
  @entry = params[:word]
  p @anagram = Word.anagrams_for(@entry)
  erb :index        
end
