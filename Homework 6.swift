// 1. Реализовать свой тип коллекции "очередь" (queue) с использованием дженериков.
// 2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)
// 3. Добавить свой subscript, который будет возвращать nil, в случае обращения к несуществующему индексу


struct queuer<Element: Comparable> {

    var items = [Element]()

    mutating func add (_ item: Element) {
        items.append(item)
    }


    mutating func next() -> Element {
        print("Next queue \(items.first!)")
        return items.removeFirst()
    }

    func filter(item: Element) {
        print("Find \(items.filter{$0 == item})")
    }


    mutating func propertySort() -> [Element] {
        return items.sorted(by: >)
    }


    subscript (index: Int) -> Element? {
        return (index < items.count ? items[index] : nil)
    }


    func printCount(){
        print(items.count)
    }


}



var round = queuer<String>(items:["Nick"])
round.add("Bob")
round.add("Chris")
round.add("Bill")

print(round.items)
print("Отсортированный: \(round.propertySort())")

round.next()
round.next()
round.add("Mickael")
print(round)
round.filter(item: "Bill")
round.printCount()

print(round)
print(round[3])
print(round[1])









