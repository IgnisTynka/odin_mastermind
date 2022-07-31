class Code
    def initialize(code)
        @code = code
    end
    def equal?(other)
        return @code[0] == other[0] && @code[1] == other[1] && @code[2] == other[2] && @code[3] == other[3]
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
    puts "Write 4 digits code"
    player_code = gets.chomp

    until mystery_code.equal?(player_code)
        puts "Write 4 digits code"
        player_code = gets.chomp  
    end
end