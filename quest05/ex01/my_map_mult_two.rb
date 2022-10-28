def my_map_mult_two(int_array) 
    new_array = Array.new
    int_array.each {
        |element| new_array << (element * 2) 
    }
    return new_array
end

int_array = [1, 2, 3, 4, 5]

my_map_mult_two(int_array)