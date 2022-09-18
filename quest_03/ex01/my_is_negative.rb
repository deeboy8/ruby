=begin
    Ask:
        create a fx that assess whether a number is positive or negative
    Return:
        if neg, return 0; if positive, return 1
    Pseudocode:
        if param1 less 0 return 0
        else return 1
=end

def my_is_negative(n)
    if n < 0
        return 0
    else
        return 1
    end
end

puts my_is_negative(-99)
puts my_is_negative(0)
puts my_is_negative(99)