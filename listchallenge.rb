# Threed - Given a list of intergers, return true if the value 3 appears 3 times, and there are no threes next to each other.
# Done
def threed(list)
    count = 0
    (list.size).times do |three|
        if list[three] == 3
            count += 1
        end
        if list[three] == list[three + 1]
            return false
        end
        if count == 3 && (list[three] != list[three + 1])
            return true
        end
    end
    return false
end
# puts threed([1, 2, 3, 4, 3, 5, 3]) # true
# puts threed([1, 2, 3]) # false
# puts threed([3, 3, 3]) # false


# Same First and Last - Given a list, return true if the first and last elements are the same. 
# Done
def same_first_last(list)
    if list[0] == list[list.size - 1]
        if list.size <= 1
            return false
        end
        return true
    end
    return false
end
# puts same_first_last([1, 2, 1]) # true
# puts same_first_last([1, 1, 2]) # false
# puts same_first_last([1]) # false


# Get Sandwich - Two pieces of bread. Return the string if there is something between the slices. 
def get_sandwich(str)
    str.size.times do |food|
        component = str[food..(food - 1)]
        if component == "bread"
            return str[component.."bread"]
        end
    end
end
# puts get_sandwich("breadhamcheesebread") # Ham and Cheese
# puts get_sandwich("breadbutterbread") # Butter
# puts get_sandwich("breadbread") # Empty


# Shift left - Move every value in a list one value to the left by rearranging them. 
        # [6, 2, 5, 3] -> [2, 5, 3, 6]
# Done
        def shiftleft(list)
    first = list[0]
    (list.size - 1).times do |i|
        list[i] = list[i + 1]
    end
    list[list.size - 1] = first
    return list
end
# puts shiftleft([1, 2, 3, 4])    # 2, 3, 4, 1


# Can Balance - Return true if a list can be split so that the sum of both sides are equal
def balance(list)
    list.size.times do |num|
        if list.size % 2 = 1
            odds = list[num - 1]
        end
        if list.size % 2 = 1
            evens = list[num]
        end
    if evens = odds
        return false
    end
end
# puts balance([1, 2, 3, 4]) #  1+4, 2+3


# Count Code - Return the number of times that "code" is said in a list. However, anything can be d. For example, "cooe" or "cope" are okay"
def countcode(list)
    count = 0
    (list.size - 1).times do |word|
        slice = list[word..(word - 1)]
        if slice == "code"
            count += 1
        end
    end
    return count
end
# puts countcode("code") # 1
# puts countcode("cooe") # 1
# puts countcode("cope") # 1


# Middle Way - Given two lists, return a new list that has both of their middle elements. 
def listone(list1)  # 2
    sorted = list1.sort
    if sorted.size % 2 == 1
        return list1[(sorted.size - 1) / 2]
    else
        return list1[(sorted.size / 2) + (sorted.size / 2 - 1)] / 2
    end
end
def listtwo(list2)
    sorted = list2.sort
    if sorted.size % 2 == 1
        return list2[(sorted.size - 1) / 2]
    else
        return list2[(sorted.size / 2) + (sorted.size / 2 - 1)] / 2
    end
end
puts listone([1, 2, 3])
puts listtwo([4, 5, 6])
# puts listone(list1), listtwo(list2)


# Either 2 or 4 - Return true if an array has a 2 next to a 2 or a 4 next to a 4, but not both. 
def either24(list)
    list.size.times do |num|
        if list[num] = 2 || 4
            return true
        elsif list[num - 1] = 2 || 4
            return true
        elsif list[nim + 2] = 2 || 4
            return true
        end
        return false
    end
end
# puts either24([4, 6, 3, 1, 1, 2, 2, 0]) # True
# puts either24([4, 6, 3, 1, 1, 2, 8, 0]) # False
# puts either24([4, 4, 1, 6, 7, 2, 2]) # False


# Max Span - Span is the number of spaces between the leftmost and rightmost apperace in a list. Return the span. 
i = 0
def max_span(list)
    list.each do |i|
        i = i + 1
        return i
    end
end
# puts max_span([1, 2, 3, 4]) # 4
# puts max_span([1, 2, 3, 4, 5]) # 5
# puts max_span([1, 2, 3, 4, 5, 6]) # 6


# G Happy - If there's a lowercase "g" in an array, it's happy if it's next to another "g." Return true if all "g's" are happy. 
def g_happy(list)
    list.size.times do |g|
        slice = list[g]
        if slice = list[g - 1] || list[g + 1]
            return true
        end
    end
    return false
end
# puts g_happy(["gg"])    # True
# puts g_happy(["gqg"])    # False
# puts g_happy(["g"])    # False


# Merge - Combine two arrays in increasing order. 
def merge(list1, list2)
    merged = list1.sort + list2.sort
    merged.sort
    return merged
end
list1 = [1, 3, 5]
list2 = [2, 4, 6]
# puts merge(list1, list2).sort