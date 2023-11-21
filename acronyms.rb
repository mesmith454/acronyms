# 1.  Take a phrase, select first letter, upcase. Return a new string of only the first upcased letters of each word. 
# 2. Handling Punctuation: Hyphens are considered word seperators, like white space. All other punctuation is removed. 


def acronym (string)
    # gsub treat hyphens like word spaces
    hyph_to_space_string = string.gsub('-', ' ')
    # gsub punctuation out of string
    no_punc_string = hyph_to_space_string.gsub(/[^A-Za-z0-9\s]/i, '')
    # convert string to an array of words
    words = no_punc_string.split(' ')
    # iterate through array and select each first letter for a new array and upcase
    first_letters = words.map {|word| word.upcase.slice(0)}
    # flatten new array into a string
    new_string = first_letters.join('')
    # return new string
    return new_string
end

p acronym("There's a snake in my-boot!")