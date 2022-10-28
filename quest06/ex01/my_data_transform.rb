=begin
    Goal: 
        - take a CSV file as string w each row seperated by \n
        - change email, age and order at columns to appropriate disposition
        - return array of data 

    Example: 
        Gender,FirstName,LastName,UserName,Email,Age,City,Device,Coffee Quantity,Order At\n
        Male,Carl,Wilderman,carl,wilderman_carl@yahoo.com,29,Seattle,Safari iPhone,2,2020-03-06 16:37:56\n
        "Male,Carl,Wilderman,carl,yahoo.com,21->40,Seattle,Safari iPhone,2,afternoon",

        For the email, we will consider the provider.
        For the age column, we consider a group from [1->20] - [21->40] - [41->65] - [66->99]
        For the Order at column, we consider a group for [morning => 06:00am -> 11:59am] - [afternoon => 12:00pm -> 5:59pm] - [evening => 6:00pm -> 11:59pm]

    Process:
        1. format data into an 2D array ---> my_csv_parser.rb
        2. iterate over each row, and change indexes of interest
            - individual functions: chang_email, change_age, change_time_of_order (if time <>, return morning, elif afternoon, else evening)
                - return manipulated value 




def get_age(age_range)
    age = "" #is this needed 
    if age_range >= 1 && age_range <= 20
        age = "1->20"
    elsif age_range >= 21 && age_range <= 40
        age = "21->40"
    elsif age_range >= 41 && age_range <= 65
        age = "41->65"
    else 
        age = "66->99"
    end
end

def get_time_of_day(time_of_day)

def parse_date(string)
    date_split = string.split("T")
    print date_split
    date_split = date_split[1].split("+")
    print date_split
end


def time_of_day(time)
    time_of_day = parse_date(time) #returns an array of [time, seconds]

    if time_of_day >= 12:00:00 && time_of_day <= 05:59:00
        return nil
    elsif time_of_day >= 6:00:00 && time_of_day <= 11:59:00
        return "morning"
    end
end
        

    
def hello
    get_age(45)
end

puts object = hello()

require 'date'
require 'time'

object = DateTime.parse('2020-03-06 16:37:56', '%Y-%m-%d %H:%M:%S').to_s
object_parse = object.split("T")
print object_parse
object_plus = object_parse[1].split("+")
print object_plus
=end

require 'date'

def parse_date(string)
    date_split = string.split("T")
    print date_split
    puts "\n"
    date_split = date_split[1].split("+")
    print date_split
    puts "\n"
    t = date_split[0].to_f
    puts t
end


def time_of_day(time)
    time_of_day = parse_date(time) #returns an array of [time, seconds]
    puts time_of_day

    if time_of_day[0] >= (12:00:00) && time_of_day[0] <= (05:59:00)
        return nil
    elsif time_of_day[0] >= (6:00:00) && time_of_day[0] <= (11:59:00)
        return "morning"
    end
end

time = DateTime.parse('2020-03-06 03:37:56', '%Y-%m-%d %H:%M:%S')
puts coffee_time = time_of_day(time.to_s)