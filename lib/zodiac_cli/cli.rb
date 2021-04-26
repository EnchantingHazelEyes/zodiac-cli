class CLI

    def start 
        intro 
        API.get_data 
        options

    end
    
    def intro
        puts "Welcome to the world of Zodiac Horoscopes!"
        puts "enter exit anytime to exit the program!"
        puts " "
    end

    def user_input
        gets.strip.downcase
    end
   
    def options 
        puts "Please enter your birth month in MM format"
        month = user_input
           
            if month == "exit" then exit_program end
   
        puts "Please enter your day of birth in DD format to find a Zodiac!"
        day = user_input
            
            if day == "exit" then exit_program end 
    
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
    if astro_sign != nil #user input is valid with zodiac, print zodiac and proceed to next step
        puts "\nYour Zodiac is #{astro_sign}!" 
        deeper_info(astro_sign)
    end 
      #  Zodiac.all.each do (astro_sign)
       #     puts "\nYour #{astro_sign}"
        #end
        
    
end

 
    def invalid_response1
        puts "Hmm something went wrong, Try again or enter exit to exit application"
    end

    def exit_program 
        puts "Hope you enjoyed learning about your Zodiac! Come Again!"
        exit
    end

    def zodiac_deep_info(astro_sign)

        case
        when astro_sign == "Sagittarius" 
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
   end  

    def print_info(zodiac)
        Zodiac.all.each do (zodiac)
        zodiac.name
        end 
    end 


   def deeper_info(astro_sign) #provides deeper information on your zodiac
        puts "\nIf you want to know more about your zodiac, enter 'y', if you wish to exit, enter 'exit'"
        response = user_input
        if response == "y"
            puts ("\nYour daily horoscope is ... ")
            zodiac_deep_info(astro_sign)
            play_again
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
        Zodiac.all.map do |astro_sign|
            astro_sign1 = (astro_sign.Sagittarius).gsub!(/#{URI::regexp}/, '') 
            astro_sign2 = (astro_sign1).chomp("</i></a>")
            astro_sign3 = (astro_sign2).gsub!(/(<a href="" alt="Sagittatius" target="_blank"> <i>Read more...)/, '')
          puts  "\n#{astro_sign3}"
        end   
         Zodiac.name;nil 
         end
    
      def cap 
        Zodiac.all.each do |astro_sign|
            astro_sign1 = (astro_sign.Capricorn).gsub!(/#{URI::regexp}/, '') 
            astro_sign2 = (astro_sign1).chomp("</i></a>")
            astro_sign3 = (astro_sign2).gsub!(/(<a href="" alt="Capricon" target="_blank"> <i>Read more...)/, '')
          puts  "\n#{astro_sign3}"
        end     
        Zodiac.name;nil        
        end

     def aqua 
        Zodiac.all.each do |astro_sign|
            astro_sign1 = (astro_sign.Aquarius).gsub!(/#{URI::regexp}/, '') 
            astro_sign2 = (astro_sign1).chomp("</i></a>")
            astro_sign3 = (astro_sign2).gsub!(/(<a href="" alt="Aquarius" target="_blank"> <i>Read more...)/, '')
          puts  "\n#{astro_sign3}"
        end     
        Zodiac.name;nil        
        end

         def pis 
        Zodiac.all.each do |astro_sign|
            astro_sign1 = (astro_sign.Pisces).gsub!(/#{URI::regexp}/, '') 
            astro_sign2 = (astro_sign1).chomp("</i></a>")
            astro_sign3 = (astro_sign2).gsub!(/(<a href="" alt="Pisces" target="_blank"> <i>Read more...)/, '')
          puts  "\n#{astro_sign3}"
        end    
        Zodiac.name;nil         
        end

         def ari 
        Zodiac.all.each do |astro_sign|
            astro_sign1 = (astro_sign.Aries).gsub!(/#{URI::regexp}/, '') 
            astro_sign2 = (astro_sign1).chomp("</i></a>")
            astro_sign3 = (astro_sign2).gsub!(/(<a href="" alt="Aries" target="_blank"> <i>Read more...)/, '')
          puts  "\n#{astro_sign3}"
        end   
        Zodiac.name;nil          
        end

         def tau 
        Zodiac.all.each do |astro_sign|
            astro_sign1 = (astro_sign.Taurus).gsub!(/#{URI::regexp}/, '') 
            astro_sign2 = (astro_sign1).chomp("</i></a>")
            astro_sign3 = (astro_sign2).gsub!(/(<a href="" alt="Taurus" target="_blank"> <i>Read more...)/, '')
          puts  "\n#{astro_sign3}"
        end
        Zodiac.name;nil             
        end

         def geme 
        Zodiac.all.each do |astro_sign|
            astro_sign1 = (astro_sign.Gemini).gsub!(/#{URI::regexp}/, '') 
            astro_sign2 = (astro_sign1).chomp("</i></a>")
            astro_sign3 = (astro_sign2).gsub!(/(<a href="" alt="Gemini" target="_blank"> <i>Read more...)/, '')
          puts  "\n#{astro_sign3}"
        end    
        Zodiac.name;nil         
        end

         def can 
        Zodiac.all.each do |astro_sign|
            astro_sign1 = (astro_sign.Cancer).gsub!(/#{URI::regexp}/, '') 
            astro_sign2 = (astro_sign1).chomp("</i></a>")
            astro_sign3 = (astro_sign2).gsub!(/(<a href="" alt="Cancer" target="_blank"> <i>Read more...)/, '')
          puts  "\n#{astro_sign3}"
        end     
        Zodiac.name;nil        
        end

         def le 
        Zodiac.all.each do |astro_sign|
            astro_sign1 = (astro_sign.Leo).gsub!(/#{URI::regexp}/, '') 
            astro_sign2 = (astro_sign1).chomp("</i></a>")
            astro_sign3 = (astro_sign2).gsub!(/(<a href="" alt="Leo" target="_blank"> <i>Read more...)/, '')
          puts  "\n#{astro_sign3}"
        end     
        Zodiac.name;nil        
        end

         def vir 
        Zodiac.all.each do |astro_sign|
            astro_sign1 = (astro_sign.Virgo).gsub!(/#{URI::regexp}/, '') 
            astro_sign2 = (astro_sign1).chomp("</i></a>")
            astro_sign3 = (astro_sign2).gsub!(/(<a href="" alt="Virgo" target="_blank"> <i>Read more...)/, '')
          puts  "\n#{astro_sign3}"
        end   
        Zodiac.name;nil          
        end

         def libr 
        Zodiac.all.each do |astro_sign|
            astro_sign1 = (astro_sign.Libra).gsub!(/#{URI::regexp}/, '') 
            astro_sign2 = (astro_sign1).chomp("</i></a>")
            astro_sign3 = (astro_sign2).gsub!(/(<a href="" alt="Libra" target="_blank"> <i>Read more...)/, '')
          puts  "\n#{astro_sign3}"
        end  
        Zodiac.name;nil           
        end

         def sco 
        Zodiac.all.each do |astro_sign|
            astro_sign1 = (astro_sign.Scorpio).gsub!(/#{URI::regexp}/, '') 
            astro_sign2 = (astro_sign1).chomp("</i></a>")
            astro_sign3 = (astro_sign2).gsub!(/(<a href="" alt="Scorpio" target="_blank"> <i>Read more...)/, '')
          puts  "\n#{astro_sign3}"
        end     
        Zodiac.name;nil        
        end

end
