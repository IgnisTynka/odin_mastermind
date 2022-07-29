class Mastermind
    def initialize
    end
end

#need methot to  randomly selects the secret colors / gest cod from player / comparing the code with the cipher / puts feedback 

#ruls: good color good place / good color wrong place / wrong color

#kroki 
#1. Wybierasz czy chcesz byc osoba ktora tworzy kod czy ktora zgaduje kod
#2.1 Jezeli wybrales tworzenie kodu podajesz 4 cyfry ktore sa kodem nastepnie odgaduje komputer
#2.2 Jezeli zgadujesz to wprowadzasz 4 cyfry i dostajesz feedback zgodny z zasadami 

#need find information about display colors in ruby 

#need to make concept more more specific

puts "Welcome to the game Mastermind! 
You can be the code maker or the code breaker.
Choose 1 if you want to be a code maker or 2 if you want to be a code breaker"
role = gets.chomp.to_i - 1 
