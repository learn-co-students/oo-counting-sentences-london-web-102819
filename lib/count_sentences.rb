require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentence_counter = 0
    self.split(" ").each do |word|
      if word.exclamation? || word.question? || word.sentence?
        sentence_counter +=1
      end
    end
    return sentence_counter
  end
end