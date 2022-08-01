class Code
    def initialize(code)
        @code = code
    end
    def equal?(other)
        return @code[0] == other[0] && @code[1] == other[1] && @code[2] == other[2] && @code[3] == other[3]
    end
    # def get_total_info(guess)
    #     total_info = ""
    #     i = 0
    #     4.times do
    #         total_info += mystery_code.get_info(i, guess[i])
    #         i += 1
    #     end
    #     return total_info
    # end
    def get_info(index, digit)
        if @code.include?(digit)
            if @code[index] == digit
                return "2"
            else 
                return "1"
            end
        end
        return "0"        
    end
end

puts "Welcome to the game Mastermind! 
You can be the code maker or the code breaker.
Choose 1 if you want to be a code maker or 2 if you want to be a code breaker"
role = gets.chomp.to_i 

if role == 1
    puts "tbd"
elsif role == 2
    mystery_code = Code.new("1234")
    player_code = ""
    
    until mystery_code.equal?(player_code)
        puts "Write 4 digits code"
        player_code = gets.chomp
        total_info = ""
        i = 0
        4.times do
            total_info += mystery_code.get_info(i, player_code[i])
            i += 1
        end
        puts total_info
    end
end