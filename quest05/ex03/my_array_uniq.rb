def my_count_on_it(int_array)
    #create unique array to hold array with no duplicates
    return unique_array = int_array.uniq
end

days_of_week = [1, 2, 3, 4, 5, 2, 1, 6]

puts my_count_on_it(days_of_week)