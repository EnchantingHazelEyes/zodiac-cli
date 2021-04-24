class CLI

    def start 
        intro 
        API.get_data 
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
    
  #  astro_sign = []
    case  #checking through user input to declare what zodiac is user
    when month == "12" && day < "22" && day > "00"
         astro_sign = "Sagittarius"
    when month == "12" && day >= "22" && day < "32"
         astro_sign =  "Capricorn"
         
    when month == "01" && day < "20"  && day > "00" 
         astro_sign =  "Capricorn" 
    when month == "01" && day >= "20" && day < "32"
         astro_sign =  "Aquarius"

    when month == "02" && day < "19" && day > "00"
         astro_sign = "Aquarius"
    when month == "02" && day >= "19" && day < "30"
         astro_sign =  "Pisces"

    when month == "03" && day < "21" && day > "00"
         astro_sign =  "Pisces"
    when month == "03" && day >= "21" && day < "32"
         astro_sign =  "Aries"
        
    when month == "04" && day < "20"  && day > "00"
         astro_sign =  "Aries"
    when month == "04" && day >= "20" && day < "31"
         astro_sign =  "Taurus"
    
    when month == "05" && day < "21" && day > "00"
         astro_sign = "Taurus"
    when month == "05" && day >= "21" && day < "32"
         astro_sign =  "Gemini"
        
    when month == "06" && day < "21" && day > "00"
         astro_sign =  "Gemini"
    when month == "06" && day >= "21" && day < "31"
         astro_sign =  "Cancer"
        
    when month == "07" && day < "23" && day > "00"
         astro_sign =  "Cancer"
    when month == "07" && day >= "23" && day < "32"
         astro_sign =  "Leo"

    when month == "08" && day < "23" && day > "00"
         astro_sign =  "Leo"
    when month == "08" && day >= "23" && day < "32"
         astro_sign =  "Virgo"
       
    when month == "09" && day < "23" && day > "00"
         astro_sign =  "Virgo"
    when month == "09" && day >= "23" && day < "31"
         astro_sign =  "Libra"
           
    when month == "10" && day < "23" && day > "00"
         astro_sign =  "Libra"
    when month == "10" && day >= "23" && day < "32"
         astro_sign =  "Scorpio"
           
    when month == "11" && day < "22" && day > "00"
         astro_sign =  "Scorpio"
    when month == "11" && day >= "22" && day < "31"
         astro_sign = "Sagittarius"
    
    else
       invalid_response1
       options
    end
    if astro_sign != nil #if the user input is valid with zodiac, print zodiac and proceed to next step
        puts "\nYour Zodiac is #{astro_sign}!" 
        
        deeper_info(astro_sign)
        #zodiac_deep_info(astro_sign)
        play_again
    end
    
end

 
    def invalid_response1
        puts "Hmm something went wrong, Try again or enter exit to exit application"
    end

    def exit_program 
        puts "Hope you enjoyed learning about your Zodiac! Come Again!"
        exit
    end

    def zodiac_deep_info(astro_sign)
       
       # Zodiac.all.each do |astro_sign|
        case
        when astro_sign == "Sagittarius" 
              puts "Your daily horoscope is "
              puts sag 
        when astro_sign == "Capricorn" 
              puts cap
        when astro_sign == "Aquarius" 
                puts aqua
        when astro_sign == "Pisces" 
                puts pis
        when astro_sign == "Aries" 
                puts ari
        when astro_sign == "Taurus" 
                puts tau
        when astro_sign == "Gemini" 
                puts geme
        when astro_sign == "Cancer" 
                puts can
        when astro_sign == "Leo" 
                puts le 
        when astro_sign == "Virgo" 
                puts vir
        when astro_sign == "Libra" 
                puts libr
        when astro_sign == "Scorpio" 
                puts sco             
        end 
        
    #  binding.pry
        #end 
   end  

    def print_info(zodiac)
        
        puts "\nYour daily horoscope #{zodiac}"
    end 


   def deeper_info(astro_sign) #provides deeper information on your zodiac
        puts "\nIf you want to know more about your zodiac, enter 'y', if you wish to exit, enter 'exit'"
        response = user_input
        if response == "y"
            zodiac_deep_info(astro_sign)
          #  puts "zodiac info"
        elsif response == "exit"
            exit_program
        else
            invalid_response2
            deeper_info
        end 
    end 

   def invalid_response2
        puts "\nInvalid response, enter 'y' to see more information, or 'exit' to exit application"
   end

   def play_again
    puts "\nDo you want to know about another zodiac?"
    puts "enter 'y' to play again, or 'exit' to exit application"
    response = user_input
        if response == "y"
            options
        elsif response == "exit" 
            exit_program
        else
            invalid_response2
            play_again
        end 
   end 
   def sag
    Zodiac.all.each do |astro_sign|
      puts  "\n#{astro_sign.Sagittarius}"
    end            
    end
    
    def cap 
        Zodiac.all.each do |astro_sign|
            puts ("\nYour daily horoscope is ... ")
          puts  "\n#{astro_sign.Capricorn}\n"
        end            
        end

     def aqua 
        Zodiac.all.each do |astro_sign|
          puts  "\n#{astro_sign.Aquarius}"
        end            
        end

         def pis 
        Zodiac.all.each do |astro_sign|
          puts  "\n#{astro_sign.Pisces}"
        end            
        end

         def ari 
        Zodiac.all.each do |astro_sign|
          puts  "\n#{astro_sign.Aries}"
        end            
        end

         def tau 
        Zodiac.all.each do |astro_sign|
          puts  "\n#{astro_sign.Taurus}"
        end            
        end

         def geme 
        Zodiac.all.each do |astro_sign|
          puts  "\n#{astro_sign.Gemini}"
        end            
        end

         def can 
        Zodiac.all.each do |astro_sign|
          puts  "\n#{astro_sign.Cancer}"
        end            
        end

         def le 
        Zodiac.all.each do |astro_sign|
          puts  "\n#{astro_sign.Leo}"
        end            
        end

         def vir 
        Zodiac.all.each do |astro_sign|
          puts  "\n#{astro_sign.Virgo}"
        end            
        end

         def libr 
        Zodiac.all.each do |astro_sign|
          puts  "\n#{astro_sign.Libra}"
        end            
        end

         def sco 
        Zodiac.all.each do |astro_sign|
          puts  "\n#{astro_sign.Scorpio}"
        end            
        end

end
