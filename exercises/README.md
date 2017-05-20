# DFRAD - Exercícios

## 1. Numbers
```
00 01 02 03 04 05 06 07 08 09
10 11 12 13 14 15 16 17 18 19
20 21 22 23 24 25 26 27 28 29
30 31 32 33 34 35 36 37 38 39
40 41 42 43 44 45 46 47 48 49
50 51 52 53 54 55 56 57 58 59
60 61 62 63 64 65 66 67 68 69
70 71 72 73 74 75 76 77 78 79
80 81 82 83 84 85 86 87 88 89
90 91 92 93 94 95 96 97 98 99
```

```
99 98 97 96 95 94 93 92 91 90
89 88 87 86 85 84 83 82 81 80
79 78 77 76 75 74 73 72 71 70
69 68 67 66 65 64 63 62 61 60
59 58 57 56 55 54 53 52 51 50
49 48 47 46 45 44 43 42 41 40
39 38 37 36 35 34 33 32 31 30
29 28 27 26 25 24 23 22 21 20
19 18 17 16 15 14 13 12 11 10
09 08 07 06 05 04 03 02 01 00
```

```
99 97 95 93 91
89 87 85 83 81
79 77 75 73 71
69 67 65 63 61
59 57 55 53 51
49 47 45 43 41
39 37 35 33 31
29 27 25 23 21
19 17 15 13 11
09 07 05 03 01
```

## 2. Calendar
```
puts "Enter start (DOM, SEG, TER, QUA, QUI, SEX, SAB):"
start = gets.chomp
puts "Enter days:"
days = gets.chomp.to_i

# TODO
# DOM SEG TER QUA QUI SEX SAB
#      01  02  03  04  05  06
#  07  08  09  10  11  12  13
#  14  15  16  17  18  19  20
#  21  22  23  24  25  26  27
#  28  29  30  31
```

## 3. Hamming
```
def hamming()
  # TODO
end

dna1 = 'GGACG'
dna2 = 'GGTCG'
          ˆ
puts hamming(dna1, dna2)) #=> 1

dna1 = 'GGACGGATTCTG
dna2 = 'AGGACGGATTCT
        ˆ ˆˆˆ ˆˆ ˆˆˆ
puts hamming(dna1, dna2)) #=> 9
```

## 4. CEP

```
require 'json'
require 'net/http'

uri = URI("https:#viacep.com.br/ws/01001000/json/")
json_str = Net::HTTP.get(uri)
orgs = JSON.parse(json_str)

# TODO
# cep: 01001-000,
# logradouro: Praça da Sé,
# complemento: lado ímpar,
# bairro: Sé,
# localidade: São Paulo,
# uf: SP,
# unidade: ,
# ibge: 3550308,
# gia: 1004
```

## 5. Count elements

```
require 'csv'
@events = CSV.read(filename, { headers: true, col_sep: ";" })

#products.csv
# lápis;10
# caneta;20
# caderno;7

# TODO
# total() #=> 37
```

## 6. calc
```
# operator: '+', '-', '*', '/'
def calc(operand1, operand2, operator)
  # TODO
end

puts calc(1, 1, '+')) #=> 2
puts calc(1, 1, '*')) #=> 1
```

## 7. min
```
def min(array)
  # TODO
end

array = [1, 4, 2, 6, 10, 3]
puts min(array)) #=> 1
```

## 8. max
```
def max(array){
  # TODO
end

array = [1, 4, 2, 6, 10, 3]
puts max(array)) #=> 10
```

## 9. range
```
range(10)
#=> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

range(1, 11)
#=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

range(0, 30, 5)
#=> [0, 5, 10, 15, 20, 25]
```

## 10. zip
```
zip(['moe', 'larry', 'curly'], [30, 40, 50], [true, false, false])
#=> [["moe", 30, true], ["larry", 40, false], ["curly", 50, false]]

zip(['moe', 'larry'], [30, 40])
#=> [["moe", 30], ["larry", 40]]
```

## 11. uniq
```
uniq([1, 2, 1, 4, 1, 3])
#=> [1, 2, 4, 3]

uniq([1, 2, 1, 3, 3])
#=> [1, 2, 3]
```

## 12. random
```
Random.rand
#=>  0.8074210143177004

random(0, 100)
#=> 42

people = ['Fulano', 'Beltrano' , 'Sicrano']
puts people[random(0, people.length - 1)]
```

## 13. Order
```
pencil = Product.new (1, "Lápis", 1.5)
pen  = Product.new (2, "Caneta", 3)
notebook = Product.new(3, "Caderno", 20)

order = Order.new()
order.addProduct(pencil)
order.addProduct(pencil)
order.addProduct(pen)
order.addProduct(notebook)
puts order.total() #=> 26

# total by category?
```
