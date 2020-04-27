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
    x = self.split(/\.|\?|\!/).delete_if do |word|
      word.size < 2
    end
    x.size
  end
end