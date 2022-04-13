import UIKit
import Darwin
import Darwin.C.math

//1. Решить квадратное уравнение. ax^2 + bx + c = y

let a = 6
let b = 7
let c = 1

let D = b^2 - 4*a*c
if D > 0 {
    let x1 = (-b + D^(1/2)) / 2*a
    let x2 = (-b - D^(1/2)) / 2*a
    print("x1= \(x1) \nx2= \(x2)")
}
if D == 0 {
    let x = -b/2*a
    print("x= \(x) ")
}
if D < 0 {
    print("Корней нет!")
}


//2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.
var n : Double = 3
var m : Double = 4
var g = sqrt((pow(n,2) + pow(m,2)))  // Гипотенуза

let p = n + m + g  // Периметр
let s = (n * m)/2  // Площадь
print("\nПлощадь: \(s) \nПериметр: \(p) \nГипотенуза: \(g)")



//3. * Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.

let vklad = 12000
let godProcent = 5
let sum = vklad + (godProcent * vklad * 5) / 100
print("\nСумма вклада через 5 лет \(sum)")
