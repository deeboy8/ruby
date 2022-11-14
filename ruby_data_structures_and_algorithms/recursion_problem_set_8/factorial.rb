=begin
    Problem
        - write function factorial
        - accepts number --> returns factorial of that number
    
    Inputs/Outputs
        - 1! ---> 1
        - 2! ---> 2
        - 4! ---> 24
        - 7! ---> 5040
    
    Process
        - USE RECURSION!
        - check if numb == 0 or == 1
        - if n < numb
            - call factorial(numb - 1)
=end

def factorial(number)
    if (number == 0 || number == 1)
        return 1
    end

    if (number > 0)
        return number * factorial(number - 1)
    end
end

puts factorial(7)