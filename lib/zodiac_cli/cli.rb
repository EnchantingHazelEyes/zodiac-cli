class CLI
    
    def start 
        intro 
        API.get_data 
        #input = user_input
        options

    end
    
    def intro
        puts "Welcome to the world of Zodiacs"
        puts "enter exit anytime to exit the program!"
        puts " "
    end

    def user_input
        gets.strip
    end
   
    def options
        puts "Please enter your birth month in MM format"
        month = user_input
    if month == "exit" then exit_program end
   
        puts "Please enter your day of birth in DD format to find a Zodiac!"
        day = user_input
    if day == "exit" then exit_program end 
    
    case 
    when month == "12" && day < "22"
         astro_sign =  "Sagittarius"
    when month == "12" && day >= "22"
         astro_sign =  "Capricorn"

    when month == "01" && day < "20"
         astro_sign =  "Capricorn"
    when month == "01" && day >= "20"
         astro_sign =  "Aquarius"

    when month == "02" && day < "19"
         astro_sign =  "Aquarius"
    when month == "02" && day >= "19"
         astro_sign =  "Pisces"

    when month == "03" && day < "21"
         astro_sign =  "Pisces"
    when month == "03" && day >= "21"
         astro_sign =  "Aries"
        
    when month == "04" && day < "20"
         astro_sign =  "Aries"
    when month == "04" && day >= "20"
         astro_sign =  "Taurus"
    
    when month == "05" && day < "21"
         astro_sign =  "Taurus"
    when month == "05" && day >= "21"
         astro_sign =  "Gemini"
        
    when month == "06" && day < "21"
         astro_sign =  "Gemini"
    when month == "06" && day >= "21"
         astro_sign =  "Cancer"
        
    when month == "07" && day < "23"
         astro_sign =  "Cancer"
    when month == "07" && day >= "23"
         astro_sign =  "Leo"

    when month == "08" && day < "23"
         astro_sign =  "Leo"
    when month == "08" && day >= "23"
         astro_sign =  "Virgo"
       
    when month == "09" && day < "23"
         astro_sign =  "Virgo"
    when month == "09" && day >= "23"
         astro_sign =  "Libra"
           
    when month == "10" && day < "23"
         astro_sign =  "Libra"
    when month == "10" && day >= "23"
         astro_sign =  "Scorpio"
           
    when month == "11" && day < "22"
         astro_sign =  "Scorpio"
    when month == "11" && day >= "22"
         astro_sign =  "Sagittarius"
    
    else
       invalid_response1
       options
    end
    if astro_sign != nil
        puts "Your Zodiac is #{astro_sign}!"
        deeper_info
    end

end
 
    def invalid_response1
        puts "Hmm something went wrong, Try again or enter exit to exit application"
    end

    def exit_program
        puts "Hope you enjoyed learning about your Zodiac! Come Again!"
        exit
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
