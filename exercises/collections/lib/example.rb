# frozen_string_literal: true

# ### Массивы

# ## Массив символов с интерполяция
# %I(a b c d e f)

# ## Массив символов без интерполяции
# %i(a b c d e f)

# ## Массив строк с интерполяцией
# %W(a b c d e f)

# ## Массив строк без интерполяции
# %w(a b c d e f)

# ## Добавление элементов в массив
# array = []
# array << 0
# array.push('one')
# array.unshift(-1)
# array.concat([3.0])

# ## Перебор элементов массив
# array = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
# for item in array
#   p letter
# end

# array.each do |letter|
#   p letter
# end

# array.each_with_index do |letter, index|
#   p "Letter(#{index}): #{letter}"
# end

# ## Индексирование элементов массива
# array = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
# array[0]
# array.at(1)
# array.take(2)
# array.first
# array.first(2)
# array[array.size-1]
# array[-1]
# array.last
# array.last(2)
# array.sample
# array.fetch(100, 'Не найден')

# ## Удаление элементов массива
# array = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
# array.pop
# array.shift
# array.delete("b")
# array.delete_at(0)
# array.delete_if { |letter| letter == 'd' }
# array.reject { |letter| letter == 'e' }
# array.select { |letter| letter != 'f' }

# ## Манипулирование массивом
# array = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
# array.reverse
# array.reverse!
# array.sort!

# ## Деструктуризация
# first, second = ['a', 'b', 'c']
# first,  = ['c', 'a', 'b']

# ## Удаление nil из массив
# array = ["a", "b", "c", nil, "e", "f", "g", "h", "i", nil]
# array.compact
# array.compact!

# ## Информация о массиве
# array = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
# array.max
# array.min
# array.length
# array.size
# array.count
# array.empty?

# ## Массивы как множество
# array_a = [1, 2, 3]
# array_b = [4, 5, 6]
# array_c = [2, 4, 6]

# array_a & array_b
# array_a & array_c
# array_a | array_b
# array_a | array_c

# ### Сет
# array = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
# array *= 2
# set = Set.new(array)

# ## Проверка полного пересечения
# subset = Set.new(['a', 'b', 'c'])
# subset.subset? set

# ## Поиск исключающей разницы
# set.difference subset
# subset.difference set

# ## Проверка пересечения множеств
# set.intersect? subset

# ## Проверка полного исключения
# set.disjoint? subset

# ## Удаление подмножества
# set.subtract subset

# ## Очистка
# set.clear

# ### Диапазон
# range = 1..10

# # Массив из диапазона
# array = (range).to_a
# array = (-1..-5).to_a
# array = ("a".."j").to_a
# array = ("a"..."j").to_a

# ### Хеш

# ## Символьные и строковые ключи
# symbol_hash = { foo: 1, baz: 2, bar: 3 }
# string_hash = { "foo" => 1, "baz" => 2, "bar" => 3 }

# ## Получение элементов из хеша
# hash = { foo: 1, baz: 2, bar: 3, nested_hash: { lol: 4 } }
# hash[:foo]
# hash.fetch(:foo)
# hash.values_at(:foo, :bar)
# hash[:nested_hash][:lol]
# hash.dig(:nested_hash, :lol)

# ## В массив и обратно
# array = hash.to_a
# hash = array.to_h

# ## Добавление элементов в хеш
# hash = { foo: 1, baz: 2, bar: 3 }
# hash[:faz] = 4
# hash.store(:lol, 5)
# hash.merge({foo: 2, kek: 6})

# ## Перебор хеша
# hash = { foo: 1, baz: 2, bar: 3 }
# hash.each { |key, value| puts("Key: #{key}, value: #{value}") }
# hash.each_key { |value| puts("Key: #{value}") }
# hash.each_value { |value| puts("Value: #{value}") }
# hash.each_pair { |key, value| puts("Key: #{key}, value: #{value}") }
# hash.each_with_index do |(key, value), index|
#   puts("Pair #{index}. Key: #{key}, value: #{value}")
# end

# ## Манипулирование хешем
# hash = { foo: 1, baz: 2, bar: 3 }
# hash.select {|key, value| value != 1 }
# hash.reject {|key, value| value == 1 }
# hash.slice(:baz, :bar)
# array = [:baz, :bar]
# hash.slice(*array)

# ## Получение информации о хеше
# hash.keys
# hash.values
# hash.empty?
# hash.size
# hash.length
# hash.count

# ## Массив с хешем
# ## {'a' => 0, ..., 'd' => 3 }
# array = ("a".."d").to_a
# hash = array.each_with_object({}).with_index do |(item, object), index|
#   object[item] = index
# end

# res = {}
# hash = array.each_with_index do |item, index|
#   res[item] = index
# end

# hash = { "1": "a", "2": "b", "3": "c" }
# hash.transfrom_values(&:upcase)

# ## Домашнее задание
# # hexlet program download rails collections
