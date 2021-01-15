# function name: find_first_common_char
# Parameters: str1 of type string and str2 of type string
# Output: array of size two with integers presenting the location of the intersection of both strings respectively.
#         null in case of no intersection.

def find_first_common_char(str1, str2)
    sol = [0,0]
    dict = {}
    
    str1.each_char.with_index do |char, index|
        dict[char] = dict[char] ? dict[char] : index
    end

    str2.each_char.with_index do |char, index|
        if !!dict[char]
            sol[0] = dict[char]
            sol[1] = index
            return sol
        end
    end
    return null
end

# Function name: render_cross
# Parameters: w1 of type string, w2 of type string, indexes array of two integers
# Output: a string that when printed displays the words in crossword format intersecting on the indexes provided.

def render_cross(w1, w2, indexes)

    x_border = w1.size
    y_border = w2.size
    w1_index = indexes[1]
    w2_index = indexes[0]

    sol = ""
    for j in 0...y_border
        for i in 0..x_border
        
            if(i == x_border)
                sol << "\n"
            elsif(i == w2_index || j == w1_index)
                if(j == w1_index)
                    sol << w1[i]
                elsif(i == w2_index)
                    sol << w2[j]
                end
            else
                sol << ' '
            end
        end
    end
    return sol
end

## function name: CrossWord 
# Parameters: word1 of type string, word2 of type string
# Output: string presenting the crossword of the two words or an error message

def CrossWord(word1, word2)
    indixes = find_first_common_char(word1, word2)
    if (indixes)
        return render_cross(word1,word2,indixes)
    else
        return 'error: no intersection found'
    end
end

# print find_first_common_char("balloon","bat")
# print find_first_common_char("cat","hat")
# print find_first_common_char("faint","test")
# print find_first_common_char("road","dad")
# print find_first_common_char("dad","road")

print CrossWord("balloon","bat")
print CrossWord("cat","hat")
print CrossWord("faint","test")
print CrossWord("road","dad")
print CrossWord("dad","road")
print "\n"
# print render_cross("balloon","bat",[0,0])
# print render_cross("cat","hat",[1,1])
# print render_cross("faint","test",[4,0])
# print render_cross("road","dad",[3,0])
# print render_cross("dad","road", [1,2])

