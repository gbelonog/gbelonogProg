
def fibonacci (n)
    n > 1? fibonacci(n - 1) + fibonacci(n - 2) : n
end
def factorial n
    n > 1 ? n * factorial(n - 1) : 1
end

puts "Fibonacci numbers: 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, …  \n"
puts "Enter an id of Fibonacci number: "

number = gets.chomp.to_i

result = fibonacci(number)

puts "Fibonacci (#{number}) = #{result}"
puts "Factorial (#{number}) = #{factorial(number)}"




