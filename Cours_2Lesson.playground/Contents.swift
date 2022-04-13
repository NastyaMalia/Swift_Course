import UIKit
import Darwin

//6.Заполнить массив элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n (пусть будет 100), следуя методу Эратосфена, нужно выполнить следующие шаги:
//a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
//b. Пусть переменная p изначально равна двум — первому простому числу.
//c. Зачеркнуть в списке числа от 2 + p до n, считая шагом p.
//d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.
//e. Повторять шаги c и d, пока возможно.

func prime (num: Int) -> Bool {
    if num < 2 {
        return false
    }
    for i in 2..<num {
        if num % i == 0 {
            return false
        }
    }
    
    return true
}
func PrimeArray () -> [Int] {
    var array = [Int]()
    var i = 2
    while i < 100 {
        if prime(num: i) {
            array.append(i)
        }
        i += 1
    }
    
    return array
}
print (PrimeArray())


//1. Написать функцию, которая определяет, четное число или нет.
func isEven(x: Int) -> Bool{
   var even = false
   if x % 2 == 0 {
      even = true
    }
    return even
}


//2. Написать функцию, которая определяет, делится ли число без остатка на 3.
func isRemains(x: Int) -> Bool{
    var remains = false
    if x % 3 == 0{
        remains = true
    }
    return remains
}


//3. Создать возрастающий массив из 100 чисел.
var myArray: [Int] = []
for i in 0...99 {
    myArray.append(i)
}
print("\nСоздать возрастающий массив из 100 чисел:\n\(myArray)")


//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
for value in myArray{
    if isEven(x: value) || isRemains(x: value){
        myArray.remove(at: myArray.firstIndex(of: value)!)
    }
}
print("\nМассив из нечетных чисел не делющихся на 3:\n\(myArray)")



