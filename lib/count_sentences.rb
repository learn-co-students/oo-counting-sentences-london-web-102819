require 'pry'

class String

  def sentence?
    return true if self[-1] == "."
    return false
  end

  def question?
    return true if self[-1] == "?"
    return false
  end

  def exclamation?
    return true if self[-1] == "!"
    return false
  end

  def count_sentences
    sentence_delimiters = [".","?","!"]
    sentence_count = 0
    
    self.chars.each_with_index do |character, i|
      if sentence_delimiters.include?(character) && !sentence_delimiters.include?(self.chars[i - 1])
        sentence_count += 1
      end
    end
    sentence_count
  end

end

