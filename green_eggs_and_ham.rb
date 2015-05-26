class GreenEggsAndHam

  def initialize
    @text = File.read('green_eggs_and_ham.txt')
  end 

  def words
    @text.split.map do |word|
      word.downcase.gsub(/[^a-z-]/, '')
    end
  end

  def word_count
    @text.split.length
  end 

  def sorted_unique_words
   words.uniq.sort
 end   

 def number_of_words_shorter_than(len)
  words.reject { |i| i.length >= len }.count
end

def longest_word
  words.max_by { |x| x.length} 
end

def frequency_of_unique_words  #hash is one thing with many key values in it
  Hash.new(0).tap do |counts|
    words.each do |word|
      counts[word] += 1
    end
  end
end

def stanzas
  @text.split("\n\n") #we are looking for 2 newlines
end

def lines
  @text.split("\n").reject { |line| line == ""}  #no space between "", as we are not looking for \n and a space
end

end