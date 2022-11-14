=begin
    Problem
        - create fx product_of_array
        - receives an array of numbers
        - returns the product of them all
    
    Questions
        - what about an empty array or single value array?
    
    Input/Output
        - productOfArray([1,2,3]) // 6
        - productOfArray([1,2,3,10]) // 60
    
    Process
        - use RECURSION
        - check for nil or single value array
            - will assume nil returns nil, single value returns itself
        - use splice method
            - return each value from array and remove from arr passed to fx
        - result variable will hold resultant value from recursive calls
=end

def product_of_array(arr)
    #return 1 if arr.length == 0
    #arr[0] * product_of_array(arr[1..-1])
    
end


print product_of_array([1, 2, 45, 4, 5, 6])


  
