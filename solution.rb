
def find_first_common_char(str1, str2)
    sol = [0,0]
    dict = {}
    if (str1.size < str2.size)
        firstWord = str1
        secondWord = str2
    #     flipped = false
    else
        firstWord = str2
        secondWord = str1
    #     flipped = true
    end
    firstWord.each_char.with_index do |char, index|
        dict[char] = dict[char] ? dict[char] : index
    end
    puts dict
    secondWord.each_char.with_index do |char, index|
        # puts char, index, dict[char]
        if !!dict[char]
            # puts("found it")
            # if !flipped
                sol[1] = dict[char]
                sol[0] = index
            # else
            #     sol[0] = dict[char]
            #     sol[1] = index
            # end
            return sol
        end
    end
    return null
end

def render_cross(w1, w2, indexes)
    # puts(w1)
    # puts(w2)
    x_border = w1.size
    y_border = w2.size
    w1_index = indexes[1]
    w2_index = indexes[0]
    # puts(x_border)
    # puts(y_border)
    # pry
    sol = ""
    for j in 0...y_border
        for i in 0..x_border
        # puts("i is #{i}")
        
            if(i == x_border)
                # puts("new Line")
                sol << "\n"
                
            elsif(i == w2_index || j == w1_index)
                if(j == w1_index)
                    # puts w1[i]
                    sol << w1[i]
                elsif(i == w2_index)
                    # puts w2[j]
                    sol << w2[j]
                end
            else
                # puts ' '
                sol << ' '
            end
        end
    end
    return sol
end

# print find_first_common_char("balloon","bat")
# print find_first_common_char("cat","hat")
# print find_first_common_char("faint","test")
print find_first_common_char("road","dad")
print find_first_common_char("dad","road")

print "\n"
# print render_cross("balloon","bat",[0,0])
# print render_cross("cat","hat",[1,1])
# print render_cross("faint","test",[4,0])
print render_cross("road","dad",[2,1])
# print render_cross("dad","road", find_first_common_char("dad","road"))

