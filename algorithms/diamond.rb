x = 5
y = 1
char = '*'

while x > 0
  line = [' '] * x + [char] 
  if x < 5
    line += [' '] * (3 - x + y) + [char]
  end
  puts line.join
  x -= 1
  y += 1
end

x = 0
while x <= 5
  line = [' '] * x + [char] 
  if x < 5
    line += [' '] * (3 - x + y) + [char]
  end
  puts line.join
  x += 1
  y -= 1
end
