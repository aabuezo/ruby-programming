require 'date'

p (Date.parse('1901-01-01')...Date.parse('2000-12-31')).to_a.inject(0){|sum, date| date.day == 1 && date.wday == 0 ? sum + 1 : sum}
