require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    # array = self.split(".,?")
#     array = self.split(/[.?]/)
#     array.length
#     array.count
#  binding.pry
  self.split(/\.|\?|\!/).delete_if{|what|what.length <1.5 }.count
  end
end