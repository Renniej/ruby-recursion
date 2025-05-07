

require "pry-byebug"


def merge_sort(numbers)
    return numbers if numbers.empty? || numbers.length == 1
    return merge!([numbers.first], [numbers.last]) if numbers.length == 2 
    middleIndex = numbers.length/2
    half1 = merge_sort(numbers[0..middleIndex])
    half2 = merge_sort(numbers[middleIndex+1..-1])
    merge!(half1, half2)
end



def merge!(sorted1, sorted2)
    sortedArr = []
    until sorted1.empty? && sorted2.empty?
        if sorted1.empty? 
            sortedArr.push(sorted2.shift)
        elsif sorted2.empty?
            sortedArr.push(sorted1.shift)
        elsif sorted1.first < sorted2.first
            sortedArr.push(sorted1.shift)
        elsif sorted2.first < sorted1.first
            sortedArr.push(sorted2.shift)
        else #they're equal to each other
            sortedArr.push(sorted1.shift)
            sortedArr.push(sorted2.shift)
        end  
    end
    sortedArr
end


puts merge_sort([3, 2, 1, 13, 8, 5, 0, 1]).join(" , ")
puts merge_sort([105, 79, 100, 110]).join(" , ")
