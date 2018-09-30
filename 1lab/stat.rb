require 'csv'

class Stat
    def load_file(csv)
        input_stat = CSV.read(csv)
        output_stat = Array.new

        input_stat.each do |input_stat|
            output_stat.push(input_stat[1].to_f)
        end
        return output_stat
    end

    def initialize
        @stat = load_file('./zdr.csv')
        # @stat.each do |e|
            # puts e
        # end
    end

    def get_min
        min = @stat.first
        @stat.each do |e|
            if (e < min)
                min = e
            end
        end
        puts min
    end

    def get_max
        max = @stat.first
        @stat.each do |e|
            if (e > max)
                max = e
            end
        end
        puts max
    end

    def get_average
        sum = 0
        @stat.each do |e|
            sum += e
        end
        puts sum / @stat.length
    end

end

Stat.new.get_average
