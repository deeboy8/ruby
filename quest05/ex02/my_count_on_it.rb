def my_size(string)
    return length = string.length
end

def my_count_on_it(string_array) 
    int_array = []
    string_array.each {
        |element| size = my_size(element)
    int_array << size
    }
    return int_array
end

#days_of_week = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday']

#puts my_count_on_it(days_of_week)