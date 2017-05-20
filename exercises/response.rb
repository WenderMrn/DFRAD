## 1. Numbers

=begin

(0...100).each{|value|
  print (value % 10 != 9)? "%02d " % value : "%02d\n" % value
}

(0...100).to_a.reverse.each{|value|
  print (value % 10 == 0)? "%02d\n" % value : "%02d " % value
}

(0...100).to_a.reverse.each{|value|
  if value.odd?
    print (value % 10 == 1)? "%02d\n" % value : "%02d " % value
  end
}

(0...100).select(&:odd?).reverse_each{|value|
    print (value % 10 == 1)? "%02d\n" % value : "%02d " % value
}
=end
## 2. Calendar

puts "Enter start (DOM, SEG, TER, QUA, QUI, SEX, SAB):"
start = gets.upcase.chomp
puts "Enter days:"
days = gets.chomp.to_i

week_days = [:DOM,:SEG,:TER, :QUA, :QUI, :SEX, :SAB]
day_number = week_days.index(start.upcase.to_sym) % week_days.count
month_days = "\nDOM SEG TER QUA QUI SEX SAB"
month_days += "    " * day_number

(1..days).each_with_index{|value,key|
  month_days += (value % 7 == 0)? " %02d\n" % value : "%02d " % value
}
puts month_days
