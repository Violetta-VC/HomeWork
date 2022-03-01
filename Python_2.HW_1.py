# 1) Создать переменную типа String

name = 'Violetta'

# 2) Создать переменную типа Integer

age = 32

# 3) Создать переменную типа Float

age_float = 32.8

# 4) Создать переменную типа Bytes

b = b'type bytes'

# 5) Создать переменную типа List

l = ['Hello', 'World!', 0, 0, 3.5]

# 6) Создать переменную типа Tuple

t = ("Hello", "Tuple", 0, 0, 3.5)

# 7) Создать переменную типа Set

s = set (['hello', 'world', 'brothers', 'hello', 1])

# 8. Создать переменную типа Frozen set

f = frozenset(['hello', 'world', 'brothers', 'hello', 1])

# 9) Создать переменную типа Dict

d = {1:"name", 2:"lastname", 3:age}

# 10) Вывести в консоль все выше перечисленные переменные с добавлением типа данных.

print('Type = name', type(name), ' =', name)
print('Type = age', type(age), ' =', age)
print('Type = age_float', type(age_float), ' =', age_float)
print('Type = b', type(b), ' =', b)
print('Type = l', type(l), ' =', l)
print('Type = t', type(t), ' =', t)
print('Type = s', type(s), ' =', s)
print('Type = f', type(f), ' =', f)
print('Type = d', type(d), ' =', d)

# 11) Создать 2 переменные String, создать переменную в которой сканкатенируете эти переменные. Вывести в консоль.

str1 = 'Hello'
str2 = ' World'
result = str1 + str2
print('result = ', result)

# 12) Вывести в одну строку переменные типа String и Integer используя “,” (Запятую)

print(str1, age)

# 13) Вывести в одну строку переменные типа String и Integer используя “+” (Плюс)

print(name + ' ' + str(age))