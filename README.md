GeekBrains

// Решить квадратное уравнение ax^2 + bx + c = 0

let a: Double = 6.0
let b: Double = 2
let c: Double = -5

let x1: Double
let x2: Double
let d: Double = b * b - 4 * a * c

if (d > 0) { 
    x1 = -b + sqrt (d) / (2 * a)
    x2 = -b - sqrt (d) / (2 * a)
    print ("Уравнение имеет два корня: x1 = \(x1), x2 = \(x2)")
} else if (d==0) {
    x1 = -b / (2 * a)
    print ("Уравнение имеет один корень: x1 = \(x1)")
} else {
    print ("Корней нет")
}


// Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника

let catet1 = 5
let catet2 = 10

var hypotenuse = sqrt(Double(catet1*catet1 + catet2*catet2))
hypotenuse = Double (round(hypotenuse*100)/100)

let perimeter = Double(catet1) + Double(catet2) + hypotenuse

let square = Double(catet1 * catet2) / 2


print ("При заданных значениях катетов \catet1 и catet2 гипотенуза равна \(hypotenuse), периметр равен \(perimeter, площадь равна /(square)"))


// Пользователь вводит сумму вклада и годовой процентю Найти сумму вклада через 5 лет

var summa: Double = 130
var procent: Double = 13

summa = summa + (summa * procent / 100);
summa += (summa * procent / 100);
summa += (summa * procent / 100);
summa += (summa * procent / 100);
summa += (summa * procent / 100);

print ("Сумма вклада через 5 лет составит = \ (summa)")










