#merge_sort(arr : number[])

# if the array is a length of 1 
    #return the first element in the arr
#else
    # create a variable called type of number[] called half_1 with the initial value of the first half of arr
    # create a variable of type number[] called half_2 with the initial value of the second half of the arr
    # create variable called merge_result with the initial value of null
    # set half1 to result of #merge_sort(half_1)
    # set half2 to result of #merge_sort(half_2)
    #return merge(half1, halt22)
#endif
#end


#merge(sorted1 : number[], sorted2 : number[] )
    #create variable of type number[] called sortedArr with the intial value of an empty array
    # create variable of type number[] called curCompartor with the initival value off the largest array beween sorted1 & sorted2

    #while sorted1 &  sorted2 are not empty
        #create variable of type number[] called other with the intial value of curCompartor == sorted1 ? sorted2 : sorted1
        #if sorted1 is empty
            # add sorted2's first element to the end of sortedArr
        #else if sorted2 is empty
            # add sorted1's first element to the end of the sortedArr
        #else if other first element is less than curCompartor's first element
            # add other.first() to the end of sortedArr
            #remove other.first() from the other
            #set curCompator to other
        # else if curCompator's first element is less than other's first element 
            #add curCompator's first element to sortedArr
            #remove curCompartors first element from curCompator
    #end

    #return sortedArr
#end