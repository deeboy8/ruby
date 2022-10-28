=begin
    - get length of elements in array
    - iterate over array comparing index i and index (i + 1)
        - if i > i + 1 -----> false


=end

def descending(int_arr)
    return int_arr.each_cons(2).all? { |a, b| (a <=> b) >= 0 }
end

def ascending(int_arr)
    return int_arr.each_cons(2).all? { |a, b| (a <=> b) <= 0 }
end

def my_is_sort(int_arr)
    if ascending(int_arr) || descending(int_arr)
        return true
    else 
        return false
    end     
end

int_arr = [90, 87, 67, 54, 1]
puts my_is_sort(int_arr)