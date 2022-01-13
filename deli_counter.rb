# Write your code here.
require "pry"

katz_deli = []

def line(deli)
    if deli.size == 0
       puts "The line is currently empty."
    else
        holder = ""
       map_output = deli.each{|p| 
       holder =  holder + " " + (deli.find_index(p)+1).to_s + ". " + p 
        }       
       puts "The line is currently:" + holder      
    end   
end

def take_a_number(katz_deli,person)
    katz_deli << person
    place_in_line = katz_deli.find_index(person) + 1

    puts "Welcome, #{person}. You are number #{place_in_line} in line."
end

def now_serving(katz_deli)
    if (katz_deli.size == 0)
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{katz_deli.first}."
        katz_deli.shift
    end
end