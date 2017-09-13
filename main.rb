require 'pry'
require 'colorize'

def check_palindrome(input)
  input[0] == input[-1] && input[1] == input[-2]
end

def menu
  puts "Enter a word:"
  input = gets.chomp.downcase
  check_palindrome(input)
  palindromic = check_palindrome(input)
  if palindromic == true
    puts "Word is palindromic".colorize(:green)
  else 
    puts "Word is non-palindromic".colorize(:red)
  end
  menu
end

puts "Palindrome Checker Program".colorize(:yellow)
menu