class CLI
    
    def start 
        puts "Welcome to the world of Zodiacs"
        intro 
        #input = user_input
        options

    end
    
    def intro
        puts "Please enter a birthday in MM/DD format to find a Zodiac!"
        puts "or enter exit to exit the program!"
    end

    def user_input
        gets.strip
    end

    #@possible_dates = [12/01]

    def options 
        response = user_input
        if response == "12/01"     #if date is valid, display zodiac name
            zodiac_info
            deeper_info      #provides deeper information for your zodiac

        elsif response == "exit" #if exit is entered , application quits
            exit_program
        else
            invalid_response1 #if invalid answer given, prompt for another answer
            options
        end
    end

    def invalid_response1
        puts "Incorrect response, Please enter date in MM/DD format"
    end

    def exit_program
        puts "Hope you enjoyed learning about your Zodiac! Come Again!"
    end

    def zodiac_info
        zodiac_names = ["caps", "Aquarius", "sags"]
       # zodiac_names.each do |zodiac|
        puts zodiac_names
        end
    
   def deeper_info #provides deeper information on your zodiac
        puts "If you want to know more about your zodiac, enter 'y', if you wish to exit, enter 'exit'"
        response = user_input
        if response == "y" 
            puts "Zodiac information"
        elsif response == "exit"
            exit_program
        else
            invalid_response2
            deeper_info
        end 
    end 

   def invalid_response2
        puts "Invalid response, enter 'y' to see more information, or 'exit' to exit application"
   end



end
