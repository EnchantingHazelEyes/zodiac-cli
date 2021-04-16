class CLI
    
    def start 
        puts "Welcome to the world of Zodiacs"
        intro 
        input = user_input

    end
    
    def intro
        puts "Please enter your birthday in MM/DD format to find your Zodiac!"
    end

    def user_input
        gets.strip
    end

    def options 
        response = user_input
        
        if response =  
     #if date is valid, display zodiac information
        #if want another zodiac, enter in new date
     #if exit is entered , application quits
     #sif invalid answer given, prompt for another answer
    end

    def invalid_response1
        puts "Incorrect response, Please enter date in MM/DD format"
    end

    def exit_program
        puts "Hope you enjoyed learning about your Zodiac! Come Again!"
    end

    def zodiac_info

    end



end
