=begin
    - GOAL: return a 2D array

    Input: "a,b,c,e\n1,2,3,4\n" && ","
    Output: 
    Return Value: [["a", "b", "c", "e"], ["1", "2", "3", "4"]]

    Process:
    - create grid to hold multiple arrays ---> grid = Array.new
    - split string into individual strings ---> .split()
    - get count of individual strings ---> .count method
    - split individual strings into individual elements
    - get count of elements ---> j
    - iterate over each "string"
        - first: convert to individual strings
        - 
=end

def split_string_into_individual_elements(param_1, param_2)
    return param_1.split(param_2)
end

def get_element_count param_1
    return count = param_1.count
end

def my_csv_parser(param_1, param_2)
    #split string into invidvidual strings
    string = param_1.split("\n")
    #p string
    #number of strings split
    strings = get_element_count(string)
    #puts strings
    
    #creating a two dimensional array
    grid = Array.new(strings) {Array.new(3)}

    i = 0
    while i < strings
        #split each invidvidual string into elements
        elements = split_string_into_individual_elements(string[i], param_2)
        #p elements
        elements_count = get_element_count(elements)
        j = 0
        while j < elements_count
            grid[i][j] = elements[j]
            j += 1
        end
        i += 1
    end
    print grid
    return grid
end 

#lines = "column1,column2,column3\nvalue1,value2,value3\n".split("\n");
#p lines 

my_csv_parser("Gender,FirstName,LastName,UserName,Email,Age,City,Device,Coffee Quantity,Order At\nMale,Carl,Wilderman,carl,wilderman_carl@yahoo.com,29,Seattle,Safari iPhone,2,2020-03-06 16:37:56\nMale,Marvin,Lind,marvin,marvin_lind@hotmail.com,77,Detroit,Chrome Android,2,2020-03-02 13:55:51\nFemale,Shanelle,Marquardt,shanelle,marquardt.shanelle@hotmail.com,21,Las Vegas,Chrome,1,2020-03-05 17:53:05\nFemale,Lavonne,Romaguera,lavonne,romaguera.lavonne@yahoo.com,81,Seattle,Chrome,2,2020-03-04 10:33:53\nMale,Derick,McLaughlin,derick,mclaughlin.derick@hotmail.com,47,Chicago,Chrome Android,1,2020-03-05 15:19:48\n", ",")
#list = "column1,column2,column3\nvalue1,value2,value3\n".split
#p list