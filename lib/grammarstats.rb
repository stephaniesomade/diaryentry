class GrammarStats
  def initialize
    @percent = []
  end

  def check(text)
  answer = text[0] == text[0].upcase && text.end_with?("?", ".", "!")
  @percent << answer
  return answer
  end

  def percentage_good
    good = @percent.count(true)
    bad = @percent.count(false)
    percentage = ((good.to_f / (good + bad).to_f) * 100).ceil
    return "#{percentage}%"
  end 
end