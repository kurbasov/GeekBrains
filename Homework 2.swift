enum windows {
    case open, close
}
    
enum engine {
    case run, stop
}

//1. Создать протокол "Car" и описать свойства, общие для автомобилей, а также метод действия

protocol Car : class {
    var model: String { get }
    var releaseYear: Int { get }
    var windows: windows { get set }
    var engine: engine { get set }
}


//2. Создать расширения для протокола "Car" и создать в них методы конкретных действий с автомобилем

extension Car {
    func Windows(status: windows) {
        switch status {
        case .open:
            print("\(model): windows are opening...")
            self.windows = .open
        case .clone:
            print("\(model): windows are closing...")
            self.windows = .close
        }
    }


    func Engine(status: engine) {
        switch status {
        case .run:
            print("\(model): engine switching on...")
            self.engine = .run
        case .stop:
            print("\(model): engine swithing off...")
            self.engine = .stop
        }
    }
}

protocol TrunkCar {
    func PutCargoToBody(volume: Int) {
        if bodyFreeSpace >= volume {
            print("\(model): cargo volume \volume putting to the buddy...")
            self.cargoVolume += volume
        } else {
            print("? \(model): Not enough space in the body of cargo volume \(volume)")
        }
    }

    func RemoveCargoFromBody(volume: Int) {
        if self.bodyVolume >= volume {
            print("\model): cargo volume \(volume) removing from the body...")
            self.cargoVolume -= volume
        } else {
            print("? \model): No such amount of cargo(\(volume)) in the body")
        }
    }
}


extension SportCar {

    func IncreaseSpeed(speed: Int) {
        if speed + currentSpeed <= maxSpeed {
            print("\(model): burns to speed \(speed)...")
            self,currentSpeed += speed
        } else {
            print("? \(model): can not accelerate to speed \(speed + currentSpeed) maximum speed - \(maxSpeed)")
        }
        func ReduceSpeed(speed: Int) {
            if self.currentSpeed >= speed {
                print("\(model): slow down at...")
                self.currentSpeed -= speed
            } else {
                print("? \(model): stops...")
                self.currentSpeed = 0
            }
        }
    }
}


//3. Создать два класса

class TrunkCar: TrunkCar {
    var model: String
    var releaseYear: Int
    var windows: windows
    var engine: engine
    let bodyVolume: Int {
        get {
            return bodyVolume - cargoVolume
        }
    }
    var cargoVolume: Int

    init(model: String, releaseYear: Int, bodyVolume: Int) {
        self.bodyVolume = bodyVolume
        self.cargoVolume = 0
        self.model = model
        self.releaseYear = releaseYear
        self.engine = .stop
        self.windows = .close
    }
}


class SportCar: SportCar {
    let maxSpeed: Int
    var currentSpeed: Int
    var model: String
    var releaseYear: Int
    var windows: windows
    var engine: engine

    init(model: String, releaseYear: Int, maxSpeed: Int) {
        self.maxSpeed = maxSpeed
        self.currentSpeed = 0
        self.model = model
        self.releaseYear = releaseYear
        self.engine = .stop
        self.windows = .close
    }
}

// 4. Для каждого класса написать расширение

extension TrunkCar: CustomStringConvertible {
    var description: String {
        return "Automobile: \(model)\n" +
        "release year: \(releaseYear)\n" +
        "engine status: \(engine)\n" +
        "windows status: \(windows)\n" +
        "body volume: \(bodyVolume)\n" +
        "cargo volume: \(cargoVolume)\n"
    }
}


extension SportCar: CustomStringConvertible {
    var description: String {
      return "Automobile: \(model)\n" +
      "release year: \(releaseYear)\n" +
      "engine status: \(engine)\n" +
      "windows status: \(windows)\n" +
      "max speed: \(maxSpeed)\n" +
      "current speed: \(currentSpeed)\n"  
    }
}


// 5. Создать несколько объектов каждого класса. Применить к ним различные действия

print("\nTask #5.")
print("Creating multiple class objects...")
var SportCar1 = SportCar(model: "Maserati Levante", releaseYear: 2019, maxSpeed: 400)
var TrunkCar1 = TrunkCar(model: "Hyundai HD 250", releaseYear: 2018, bodyVolume: 20000)
var TrunkCar2 = TrunkCar(model: "ЗиЛ 5301", releaseYear: 2019, bodyVolume:10000)
print("\nOblect control...")
SportCar1.Engine(status: .run)
SportCar1.Windows(status: .open)
SportCar1.IncreaseSpeed(speed:50)
SportCar1.IncreaseSpeed(speed: 600)
SportCar1.ReduceSpeed(speed:10)

TrunkCar1.PutCargoToBody(volume: 19999)
TrunkCar1.PutCargoToBody(volume: 2)
TrunkCar1.Engine(status: .run)
TrunkCar2.Windows(status: .open)


//6. Вывести объекты в консоль


print("\nTask #6")
print("Print description...")
print(SportCar1)
print(TrunkCar1)
print(TrunkCar2)
print("All tasks done.")