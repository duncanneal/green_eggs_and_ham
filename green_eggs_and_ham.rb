class GreenEggsAndHam

  def initialize
    @text = File.read('green_eggs_and_ham.txt')
  end 

  def word_count
    @text.split.length
  end 

  def sorted_unique_words
    @text.downcase.gsub(/[^a-z-]/, ' ').split.uniq.sort
  end   

  def count_words_less_than_four
    @text.split.length
    return if length < 4
  
  end  



  end