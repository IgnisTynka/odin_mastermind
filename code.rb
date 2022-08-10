class Code
    attr_accessor :code
    attr_accessor :digitPool

    def initialize(code = "")
        @code = code
        @digitPool = [0,1,2,3,4,5,6,7,8,9]
    end

    def generate_code
        i = 0
        while i < 4
            digit = @digitPool.sample.to_s
            unless @code.include?(digit)
                @code[i] = digit
                i += 1
            end 
        end
        @code 
    end 
    
    def delete_from_pool(digit)
        @digitPool.delete(digit.to_i)
    end

    def generate_digit
        @digitPool.sample.to_s
    end

    def replace_number(index, digit)
        @code[index] = digit
        return @code
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
end