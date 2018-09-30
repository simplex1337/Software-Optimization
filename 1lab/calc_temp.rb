class CalcTemp

    attr_accessor :temp, :scale, :scale_to_convert

    def scan_temp
        puts "which temp?"
        @temp = gets
        puts "which scale? (c, k, f)"
        @scale = gets
        puts "which scale to convert?"
        @scale_to_convert = gets
    end

    def convert
        return unless cale.eql? scale_to_convert


    end

    def print_temp
        puts "temp is #{@temp}"
    end

end

a = CalcTemp.new
a.scan_temp
a.print_temp
