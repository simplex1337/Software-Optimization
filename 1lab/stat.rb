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
        print %(
This program provides information on the number
of sick humans in the 2018
1 maximum
2 minimum
3 average value
4 corrected sample variance
Enter: )
        choise = gets.chomp.to_i

        case choise
        when 1
            puts "Minimum: #{get_min}"
        when 2
            puts "Maximum: #{get_max}"
        when 3
            puts "Average: #{get_average}"
        when 4
            puts "Sample variance: #{get_sample_variance}"
        else
            puts "wrong option"
        end
    end

    def get_min
        min = @stat.first
        @stat.each do |e|
            if (e < min)
                min = e
            end
        end
        min
    end

    def get_max
        max = @stat.first
        @stat.each do |e|
            if (e > max)
                max = e
            end
        end
        max
    end

    def get_average
        sum = 0
        @stat.each do |e|
            sum += e
        end
        sum / @stat.length
    end

    def get_sample_variance
        variance = 0
        avg = get_average
        @stat.each do |e|
            tmp = e - avg
            tmp **= 2
            variance += tmp
        end
        variance *= 1.0 / (@stat.length - 1.0)
    end

end

Stat.new
