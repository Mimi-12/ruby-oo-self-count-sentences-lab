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

  
     #self.split("").find_all{|l| l == ". " || l == "? "  || l == "! "}.count
     def count_sentences
      sentence = 0
      array = self.split
      array.each do |phrase|
      sentence += 1 if phrase.sentence? || phrase.exclamation? || phrase.question?
      end
      sentence
      
      end
    
  

end
