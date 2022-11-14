=begin
    Problem
        - write power() accepts base and exponent
        - returns power of the base to the exponent
        
    Input/Outputs
        - power(2, 0) --> 1
        - power(2, 2) --> 4
        - power(2, 4) --> 16
    
    Approach:
        -DS: RECURSION
        - account for power of 0 and 1
        - create while loop with conditional statement
            - condition --> i < exponent ???
=end

def power(base, exp)
    if exp == 0
        return 1
    end 
    if exp == 1
        return base
    end

    result = 0
    result += base * power(base, exp - 1)

    return result
end

puts result = power(2, 3)