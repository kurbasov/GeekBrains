//Написать функцию, которая определяет, четное число или нет

func number (_ number1: Int) {
    if (number1 % 2 == 0) {
        print ("Четное число")
    } else {
        print ("Нечетное число")
    }
}

number(10)


//Написать функцию, которая определяет, делится ли число без остатка на 3

func threeNumber (_ number3: Int) -> () {
    var n: Int = number3
    n = n % 3
    if (n == 0) {
        print ("Число делится на 3 без остатка")
    } else {
        print ("Число не делится на 3 без остатка")
    }
}
 
 threeNumber (9)


 //Создать возрастающий массив из 100 чисел

 var arr = [Int](1...100)
 print(arr)


 //Удалить из массива все четные числа и все числа, которые делятся на 3

 for (_, value) in numbersArray.enumerated() {
     if (value % 2) == 0 || (value % #) != 0 {
         numbersArray.remove(at: numbersArray.firstIndex(of: value)!)
     }
 }
print("Измененный массив \(numbersArray)")


//Написать функцию, которая добавляет в массивновое число Фибоначчи, и добавить при помощи нее 50 элементоd

func fibonachi(_ count: Int) -> [Double] {
    var newArray: [Double] = []
    if count = 1 {
        let f0: Double = 0
        newArray.append(f0)
    } else if count == 2 {
        let f1: Double = 1
        let f0: Double = 0
        newArray.append(f0)
        newArray.append(f1)
    } else {
        let f1: Double = 1
        let f0: Double = 0
        newArray.append(f0)
        newArray.append(f1)
        var n = 2
        while n < count + 2 {
            let n1 = (newArray[n-1]) + (newArray[n-2])
            newArray.append(n1)
            n+=1
        }
    }
    return newArray
}
print(fibonachi(2))
print(fibonachi(100))













