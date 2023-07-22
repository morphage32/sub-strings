def substrings(original_string, dictionary)
  all_words = original_string.downcase.split
  word_count = {}

  all_words.each do |word|
    dictionary.each do |query|
      # check if there is a match for the substring
      if word.include?(query)
        # check if the word has been added to the count yet
        if word_count[query] == nil
          word_count[query] = 1
        else
          word_count[query] += 1
        end
      end
    end
  end
  puts word_count
end

dict = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dict)

dict = ["how", "much", "wood", "could", "a", "woodchuck", "chuck", "if"]

substrings("How much wood could a woodchuck chuck if a woodchuck could chuck wood?", dict)