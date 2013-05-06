#!/bin/env ruby
# Ruby generator for sprite css and html

### CSS ###
a = 42
b = 10
(0..(a-1)).each do |row|
  (0..(b-1)).each do |col|
    puts ".gi-#{row}-#{col} {"
    puts "background-position: #{col*48*(-1)+6}px #{row*48*(-1)+6}px;"
    puts "}"
    puts ""
  end
end


### HTML ###
(0..(a-1)).each do |row|
  (0..(b-1)).each do |col|
    puts "<li title='gi-#{row}-#{col}'><i class='gi-#{row}-#{col}'></i></li>"
  end
end