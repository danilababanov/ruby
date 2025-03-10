arr = [1,2,3,4,5]
p arr.inject{ |sum,num| sum += num }
p arr.min
p arr.max

arr = ['den','jok','loler','joshua']
p arr.min 
p arr.max

p arr.min_by{ |i| i.length }
p arr.max_by{ |i| i.length }

=begin
Я не смог понять смысла и отношения оригинального названия статьи Aggregates, поэтому назвал статью просто «Методы inject, min и max».
Это последняя статья в цикле статей о модуле Enumerable и методах, которые он в себе содержит и которые позволяют очень удобно работать с коллекциями. В этой статье мы поговорим о методах, которые не возвращают новую коллекцию, а возвращают лишь один объект.

Метод inject

Если вы не использовали этот метод ранее, хочу вам сообщить, что он весьма интересен. Это аккумулирующий метод, который от итерации к итерации сохраняет определенное значение. Классический пример использования метода inject — это нахождение суммы элементов численного массива:

[1, 2, 3].inject{|sum, num| sum += num} #=> 6
Здесь переменная sum — первый аргумент блока в которой и сохраняется результат работы предыдущей итерации.
Другой целью использования может быть нахождение инициалов имен:

['Jaime', 'Lee', 'Bellmyer'].inject(''){|initials, name| initials += name[0,1]} #=> "JLB"
В этом примере я передал начальную строку (», или blank) в метод inject. Иначе метод inject возьмет первый элемент целиком и начнет прибавлять к нему первые буквы от «Lee» и «Bellmyer». Мне не нравится такое поведение, и я подозреваю, что inject работает именно так потому, что предполагает, что вы в такой способ пытаетесь суммировать элементы коллекции. Вы также нуждаетесь в передаче инициирующего значения в inject , когда вы хотите чтобы результат был иного типа, чем элементы коллекции:

[1, 2, 3].inject(0.0){|sum, i| sum += i.to_f} #=> 6.0
Инициирующее значение в inject — это не что иное, как шаблон, который указывает на то, какого типа должно быть возвращаемое значение. » — строка, 0 — целое число, 0.0 — дробное число и т.д.

Методы min и max

У этих методов возможности шире, чем вы могли предполагать. Они очень похожи на метод sort в том, что так же используют метод <=> для поиска соответственно элемента с минимальным и максимальным значением.

['joshua', 'gabriel', 'jacob'].min #=> "gabriel"
['joshua', 'gabriel', 'jacob'].max #=> "joshua"
[1,2,3].min #=> 1
[1,2,3].max #=> 3
Мы также можем передать наш собственный блок, по которому будет происходить поиск, так же как мы это делали в предыдущей статье с методом sort:

['joshua', 'gabriel', 'jacob'].min{|a,b| a.reverse <=> b.reverse} #=> "joshua"
['joshua', 'gabriel', 'jacob'].max{|a,b| a.reverse <=> b.reverse} #=> "gabriel"
[1,2,3].min{|a,b| a*(-1) <=> b*(-1)} #=> 3
[1,2,3].max{|a,b| a*(-1) <=> b*(-1)} #=> 1
=end