require 'pry'

katz_deli = []

def line katz_deli
    return puts "The line is currently empty." if katz_deli.empty? == true
    str = "The line is currently:"
    katz_deli.each_with_index do |person, index|
        str += " #{index+1}. #{person}"
    end
    puts str
end

def take_a_number(katz_deli, person)
    katz_deli.push(person)
    index = katz_deli.find_index(person)
    puts "Welcome, #{person}. You are number #{index+1} in line."
end

def now_serving(katz_deli)
    return puts "There is nobody waiting to be served!" if katz_deli.empty? == true
    puts "Currently serving #{katz_deli[0]}." 
    katz_deli.shift
end

