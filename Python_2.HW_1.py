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

s = set(['hello', 'world', 'brothers', 'hello', 1])

# 8. Создать переменную типа Frozen set

f = frozenset(['hello', 'world', 'brothers', 'hello', 1])

# 9) Создать переменную типа Dict

d = {1:"name", 2:"lastname", 3:age}

# 10) Вывести в консоль все выше перечисленные переменные с добавлением типа данных.

print('10. Type = name', type(name), ' =', name)
print('10. Type = age', type(age), ' =', age)
print('10. Type = age_float', type(age_float), ' =', age_float)
print('10. Type = b', type(b), ' =', b)
print('10. Type = l', type(l), ' =', l)
print('10. Type = t', type(t), ' =', t)
print('10. Type = s', type(s), ' =', s)
print('10. Type = f', type(f), ' =', f)
print('10. Type = d', type(d), ' =', d)

# 11) Создать 2 переменные String, создать переменную в которой суммируете эти переменные. Вывести в консоль.

str1 = 'Hello'
str2 = ' World'
result = str1 + str2
print('11. Result = ', result)

# 12) Создать 2 переменные Integer, создать переменную в которой суммируете эти переменные. Вывести в консоль.

int1 = 10
int2 = 3
sum12 = int1 + int2

print('12. Summa =', sum12)

# 13) Создать переменную в которой Разделите эти переменные Int. Вывести в консоль.

div12 = int1 / int2
print('13. Division = ' + str(div12))

# 14) Создать переменную в которой Умножите эти переменные Int. Вывести в консоль.

mult12 = int1 * int2
print('14. Multiplication = ' + str(mult12))

# 15) Создать переменную в которой Разделите без остатка эти переменные Int. Вывести в консоль.

div = int1 // int2
print('15. Division = ' + str(div))

# 16) Создать переменную в которой надо присвоить остаток от деления этих переменные Int. Вывести в консоль.

div16 = int1 % int2
print('16. Division16 = ' + str(div16))

# 17) (7 + 12)  3 + 7 * 4 - 44 / 2  4 расставить точки так чтобы получилось 6884.25. Вывести в консоль.

Result17 = (7 + 12) ** 3 + 7 * 4 - 44 / 2 ** 4

print('17. Result17 = ' + str(Result17))