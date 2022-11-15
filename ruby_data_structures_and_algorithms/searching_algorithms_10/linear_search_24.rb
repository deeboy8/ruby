=begin
    Problem
        - write fx linear search 
        - accepts array and a value
        - returns ---> INDEX where value exists
        - no value present ----> return -1

    Input/Output
        - linearSearch([10, 15, 20, 25, 30], 15) // 1
        - linearSearch([9, 8, 7, 6, 5, 4, 3, 2, 1, 0], 4) // 5
        - linearSearch([100], 100) // 0
        - linearSearch([1,2,3,4,5], 6) // -1
        - linearSearch([9, 8, 7, 6, 5, 4, 3, 2, 1, 0], 10) // -1
        - linearSearch([100], 200) // -1

    Plan
        - divide and conquer --> binary search
        - check if array sorted first
        - check length of array passed
            - if empty return -1
            - if one elem, check if correct value
                - if so, return 0 else return -1
        - set index vars at b/m/elem
        - check if mid var == value passed
            - if so return index
        - else
            - reset start if value < middle to start + 1 (already account for checking mid value)
            - same for end if value > middle
        - need terminating condition to end search!!!!!!!!!!!
=end

def is_sorted(arr)
    arr.each_cons(2).all? {|a, b| (a <=> b) != 1}
    #return arr.sort ? true : false
end 

def linear_search(arr, value) 
    sorted = is_sorted(arr)
    if (sorted == false) 
        return -1 
    end
   
    if arr.length == 0 
        return -1
    end

    if arr.length == 1
        return arr[0] == value ? 0 : -1
    end

    start = 0
    last = arr.length - 1
    puts middle = (start + last) / 2

    while start <= last
        if arr[middle] == value 
            return middle
        end
        if value > arr[middle]
            start = middle + 1
            middle = (start + last) / 2
            puts "new start is #{start}"
        else 
            last = middle - 1
            middle = (start + last) / 2
            puts "new last is #{last}"
        end
    end

    return -1
end
puts linear_search([10, 15, 20, 25, 30], 30)