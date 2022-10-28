def my_string_index(haystack, needle)
    # converting haystack/string into an array of chars
    chars = haystack.split('')

    # loop through each to see if it equals needle char
    chars.each { |char|
        if char == needle
            puts chars.index(char)
            return chars.index(char)
        end
    }
    return -1
end

=begin
 - convert string to an array of chars *eye roll ---> c does that already*
 - use method .each to access each one


def index_array(string)
    # convert string into an array of chars
    chars = string.split('')

    puts chars.length
    puts chars[2]
    puts
    
    chars.each {|c|
        puts c
    }

    #puts my_string_index()
index_array('abcdefg')
=end



puts my_string_index("caby", "b")

# practice_each.rb

=begin
names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']

names.each { |name| puts name }
=end