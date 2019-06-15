import UIKit

var str = "Hello, playground"

//func searchminmax(array: [Int]) -> (max:Int, min:Int, sum:Int) {
//    var max = array[0]
//    var min = array[0]
//    var sum = 0
//    for value in array {
//        if value > max {
//           max = value
//        } else if value < min {
//            min = value
//        }
//        sum += value
//
//    }
//    return (max, min, sum)
//}
//let mang = searchminmax(array: [7, 9, 10])
//print(mang.sum)

//// so trung binh cong
//func get(array: [Int]) -> Double {
//    var sum = 0
//    for value in array {
//        sum = sum + value
//    }
//    return Double(sum) / Double(array.count)
//}
//let result = get(array: [1,2,5,6])
//print(result)
//


// tim các so nguyen to trong một mang , in  mang do ra tinh trung binh công của mảng đó

//// tim so nguyen to
//func checkPrime(number:Int) -> Bool {
//    if (number < 2) {
//        return false
//    }
//    for value in 2..<number {
//        if number % value == 0 {
//            return false
//        }
//    }
//    return true
//}
//
// let numbers = checkPrime(number: 17)
//print(numbers)
//// tim so nguyen to trong mang
//func checkarrayprime(array: [Int]) -> [Int] {
//    var number:[Int] = []
//    for value in array {
//        if checkPrime(number: value) == true {
//            number.append(value)
//
//        }
//    }
//    return number
//}
//let prime = checkarrayprime(array: [Int](1...10))
//print("\(prime)")
//// lay mang so nguyen to ra tinh trung binh cong
//func average(array: [Int]) -> Double {
//   var number = 0.0
//    for value in array {
//        number = number + Double(value)
//    }
//    let result = number / Double(array.count)
//    return result
//}
//let arrayAverage = average(array: prime)
//print(arrayAverage)
//
////  kiem tra chuoi string bat ki nhap vao xoa nguyen am trong chuoi string do
//func textVowel(character: Character) -> Bool {
//     var vowel = "ueoaiUEOAI"
//    for item in vowel {
//        if (item == character) {
//            return false
//        }
//    }
//    return true
//}
//func textvowels(text: String) -> String {
//    var textString = ""
//    for item in text {
//        if textVowel(character: item) {
//            textString.append(item)
//        }
//        }
//  return textString
//    }
//let u = textvowels(text: "hello")
//print(u)

//var text = "hakdjfk"
//for item in text {
//    let texts = item
//    print(item)
//}
//
//func removeVowels(input: String) -> String {
//    let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
//    let result = String(input.characters.filter { !vowels.contains($0) })
//    return result
//}
//
//let hh = removeVowels(input: "helloword")
//print(hh)




////class and objec
//class Shape {
//    var number = 0
//    func simleDes() -> String {
//        return " a shape \(number) side."
//    }
//}
//let shape = Shape()
//shape.number = 6
//var shapeDescrip = shape.simleDes()
//print(shapeDescrip)
//
//
//class NameShape {
//    var number:Int = 0
//    var name:String
//    init(name:String) {
//        self.name = name
//    }
//    func simpleDes() -> String {
//        return "A sahpe with \(number) sides."
//    }
//}
//
//class Square:NameShape {
//    var sideleng:Double
//    init(sideleng:Double, name:String) {
//        self.sideleng = sideleng
//        super.init(name: name)
//        number = 4
//    }
//    func area() -> Double {
//       return sideleng * sideleng
//    }
//    override func simpleDes() -> String {
//        return "A quare with sides if \(sideleng)"
//    }
//}
//let test = Square(sideleng: 5.2, name: "my test")
//test.area()
//test.simpleDes()
//class Equilateral:NameShape {
//    var sideleng:Double = 0.0
//    init(sideleng:Double, name:String) {
//        self.sideleng = sideleng
//        super.init(name: name)
//        number = 3
//    }
//    var perimeter:Double {
//        get {
//            return 3.0 * sideleng
//        }
//        set {
//            sideleng = newValue / 3.0
//        }
//    }
//    override func simpleDes() -> String {
//        return "an equilaternal try \(sideleng)"
//    }
//}
//var triang = Equilateral(sideleng: 3.1, name:  "a triangle")
//print(triang.perimeter)
//triang.perimeter = 9.3
//print(triang.sideleng)

//class hinhtamgiac {
//    var h:Int
//    var a:Int
//    init(h: Int, a:Int) {
//        self.h = h
//        self.a = a
//    }
//    func dientich() -> Int {
//        let data = a * h / 2
//        return data
//    }
//}
//let data = hinhtamgiac(h: 4, a: 6)
//print(data.dientich())

//class Hinhhoc {
//    var height:Int
//    var width :Int
//    init(height:Int, width:Int) {
//        self.height  = height
//        self.width   = width
//    }
//    func dientich() -> Int {
//        return 0
//    }
//}
//class HinhVuong: Hinhhoc {
//    override func dientich() -> Int {
//        return width * width
//    }
//}
//let data = HinhVuong(height: 5, width: 8)
//print(data.dientich())
//
//class Hinhchunhat: Hinhhoc {
//    override func dientich() -> Int {
//        return width * height
//    }
//}
//let dientichHinhCn = Hinhchunhat(height: 5, width: 3)
//print(dientichHinhCn.dientich())
//
//class Hinhthang:Hinhhoc {
//    var canhben:Int
//    init(canhben:Int, height: Int, width:Int) {
//        self.canhben = canhben
//        super.init(height: height, width: width)
//    }
//    override func dientich() -> Int {
//        return (width + canhben) * height / 2
//    }
//}
//let dientichhinhThang = Hinhthang(canhben: 3, height: 6, width: 8)
//print(dientichhinhThang.dientich())
//
