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
        return unless cale.eql? scale_to_convert

        case @scale_to_convert
        when /[c]/
            case @scale
            when /[k]/
                temp -= 273.15
            when /[f]/
                temp = 5 * (self.temp - 32) / 9
            end
        end

    end

    def print_temp
        puts "temp is #{temp}"
    end

end

a = CalcTemp.new
a.scan_temp
a.print_temp
