require_relative './code.rb'

puts "Welcome to the game Mastermind! 
You can be the code maker or the code breaker.
Choose 1 if you want to be a code maker or 2 if you want to be a code breaker"
role = gets.chomp.to_i 

if role == 1
    puts "tbd"
elsif role == 2
    mystery_code = Code.new(Code.new().generate_code)
    puts mystery_code.get_code
    player_code = ""
    puts "Your mission is to guess the four-digit secret code. 
After each attempt you will get information about how close you are according to the roles below:
    2 - if both (digit and possition) are correct
    1 - if digit is corect but position wrong
    0 - if digit is wrong"

    number_of_attempts = 0
    
    until mystery_code.equal?(player_code)
        until player_code.length == 4  
            puts "Write 4 digits code"
            player_code = gets.chomp
        end
        total_info = ""
        i = 0
        4.times do
            total_info += mystery_code.get_info(i, player_code[i])
            i += 1
        end
        puts total_info
        number_of_attempts += 1
        player_code = ""
    end
    puts "Well done! You broke the code after #{number_of_attempts} try"
end