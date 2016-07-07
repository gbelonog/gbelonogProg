
def factorial (number)
    number > 1 ? number * factorial(number - 1):1
end

puts "Enter the number"
n = gets.to_i

#iteration
fact = 1
counter = n
while counter >= 1
    fact *= counter
    counter = counter - 1
end
    puts "iteration\nfactorial(#{n}) = #{fact}"

#recursion
i = 1
puts "recursion"
while i <= n
    puts "factorial(#{i}) = #{factorial(i)}"
    i = i + 1
end

#test
            

            
