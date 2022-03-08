require 'grammarstats'

RSpec.describe GrammarStats do
  it "returns a boolean based on if correct grammar is present" do 
    check_grammar = GrammarStats.new
    result = check_grammar.check("does this sentence have all the correct punctuation?")
    expect(result).to eq false
  end

  it "returns percentage based on text that has correct grammar" do
    check_grammar = GrammarStats.new
    check_grammar.check("does this sentence have all the correct punctuation?")
    check_grammar.check("This should have the correct punctuation.")
    result = check_grammar.percentage_good
    expect(result).to eq "50%"
  end

  it "returns percentage based on text that has correct grammar" do
    check_grammar = GrammarStats.new
    check_grammar.check("does this sentence have all the correct punctuation?")
    check_grammar.check("This should have the correct punctuation.")
    check_grammar.check("this sentence is poorly written")
    check_grammar.check("The sentence does not have a full-stop")
    result = check_grammar.percentage_good
    expect(result).to eq "25%"
  end
end 