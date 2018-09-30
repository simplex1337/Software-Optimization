def calc_rabbits(n)
        if (n == 1 || n == 2)
            return 1
        end
        calc_rabbits(n - 1) + calc_rabbits(n - 2)
end

puts 'which count of month?'
puts "Number of rabbits pair = #{calc_rabbits(gets.to_i)}"
