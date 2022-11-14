=begin
    Problem
        - fx recursive_range
        - accepts a single number
        - sums up all numbers from zero to number
    
    Input/Output
        - recursiveRange(6) // 21
        - recursiveRange(10) // 55

    Attack
        - RECURSION!
        - variable ---> base case/ terminating condition
        - return sums

=end
def recursive_range num
    return 0 if num == 0
    if num >= 0
        num += recursive_range(num - 1) # think of what you adding, multiplying, etc
    end
    
end

puts recursive_range(3)


=begin
def RecursiveFactorial(number)
 
    # Base Case:
     
      if (0..1).include?(number)
        return 1
      end
     
    #Recursive call:
     
        number + RecursiveFactorial(number - 1)
    end
    # Calling the method:
     
puts RecursiveFactorial(3)
=end