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
        return if scale.eql? scale_to_convert

        case @scale_to_convert
        when /[c]/
            case @scale
            when /[k]/
                @temp -= 273.15
            when /[f]/
                @temp = 5 * (self.temp - 32) / 9
            end
        when /[f]/
            case @scale
            when /[c]/
                @temp = 9 / 5 * self.temp + 32
            when /[k]/
                @temp = 9 * (self.temp - 273.15) / 5 + 32
            end
        when /k/
            case @scale
            when /c/
                @temp += 273.15
            when /f/
                @temp = 5 * (self.temp - 32) / 9 + 273.15
            end
        end
    end

    def initialize
        scan_temp
        convert
        print_temp
    end

    def print_temp
        puts "temp is #{@temp}"
    end

end

CalcTemp.new
