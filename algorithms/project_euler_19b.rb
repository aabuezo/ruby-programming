sunday_count = 0
(1901..2000).to_a.each do |y|
 (1..12).to_a.each do |m|
 t = Time.local(y,m,'01')
 sunday_count += 1 if t.sunday?
 end
end
p sunday_count