dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)

  # convert string -> lowercase and split 
  string_array = string.downcase.split

  matched_strings = []
  count_of_matches = []

  # see if any elements of string are found in the dictionary 
  dictionary.each do |substring|
    if string_array.any? { |string| string.include?(substring) }
      matched_strings.push(substring)
    end
    count = string_array.count { |string| string.include?(substring) }
    count_of_matches.push(count)
    count_of_matches.delete(0)
  end
  
  # zip together matching substrings and count of matches
  matches = matched_strings.zip(count_of_matches).to_h

  p matches

end
  
# Use cases
substrings("below it it all", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
