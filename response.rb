## 1. Numbers

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
