require 'pry'
require 'colorize'

def check_palindrome(input)
  @palindromic = nil
  if input[0] == input[-1] && input[1] == input[-2]
    @palindromic = true
  else
    @palindromic = false
  end
end

def menu
  puts "Enter a word:"
    input = gets.chomp.downcase
  check_palindrome(input)
  if @palindromic == true
    puts "Word is palindromic".colorize(:green)
  else 
    puts "Word is non-palindromic".colorize(:red)
  end
  menu
end

puts "Palindrome Checker Program"
menu