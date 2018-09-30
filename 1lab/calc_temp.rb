class CalcTemp

    attr_accessor :temp, :scale, :scale_to_convert

    def scan_temp
        puts "which temp?"
        @temp = gets.chomp.to_f
        puts "which scale? (c, k, f)"
        @scale = gets.chomp
        puts "which scale to convert?"
        @scale_to_convert = gets.chomp
    end

    def convert
        err_code = 0
        return if scale.eql? scale_to_convert

        case @scale_to_convert
        when /[Cc]/
            case @scale
            when /[Kk]/
                @temp -= 273.15
            when /[Ff]/
                @temp = 5 * (self.temp - 32) / 9
            else
                err_code = -1
            end
        when /[Ff]/
            case @scale
            when /[Cc]/
                @temp = 9 / 5 * self.temp + 32
            when /[Ck]/
                @temp = 9 * (self.temp - 273.15) / 5 + 32
            else
                err_code = -1
            end
        when /[Kk]/
            case @scale
            when /[Cc]/
                @temp += 273.15
            when /[Ff]/
                @temp = 5 * (self.temp - 32) / 9 + 273.15
            else
                err_code = -1
            end
        else
            err_code = -1
        end
        err_code
    end

    def initialize
        scan_temp
        if (convert == 0)
            print_temp
        else
            puts 'enter correct data'
        end
    end

    def print_temp
        puts "temp is #{@temp}"
    end

end

CalcTemp.new
