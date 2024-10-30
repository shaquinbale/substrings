dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
string = "Howdy partner, sit down! How's it going?"

def substrings (string, dictionary)
  result = Hash.new(0)
  
  dictionary.each do
    matches = string.downcase.scan(word).count
    result[word] = matches unless matches == 0
  end

  result
end

substrings(string, dictionary)