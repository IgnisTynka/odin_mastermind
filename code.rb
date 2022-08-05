class Code
    attr_accessor :code
    def initialize(code = "")
        @code = code
    end
    def generate_code
        i = 0
        while i < 4
            digit = rand(10).to_s
            puts digit
            unless @code.include?(digit)
                @code[i] = digit
                i += 1
            end 
        end
        @code 
    end 
    def equal?(other)
        return @code[0] == other[0] && @code[1] == other[1] && @code[2] == other[2] && @code[3] == other[3]
    end
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
    def get_code
        @code
    end
end