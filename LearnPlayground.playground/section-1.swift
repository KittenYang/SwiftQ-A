// Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
//let h = 22
//
//let ss : Double = 44.0
//
//let s = 2
//
//var hello = "hello"
//
//hello = String(99)
//
//
//var label = "the width is "
//let width =  90
//
//label = label + String(90)
//
//
//
//let apples  = 3
//let oranges = 5
//let appleSummy = "I have \(apples) apples."
//let orangesSummy = "I have \(oranges) oranges."
//
//var shoppingList = ["fishes","potatoes","eggs","juice"]
//shoppingList[2] = "banana"
//
//var dic = [
//    "ONE":"one",
//    "TWO":"two",
//    "THREE":"three",
//    "FOUR":"four",
//    "APP":"application",
//]
//
//dic["APP"] = "apples"
//
//
//let scores = [90,190,10,22,234,34,23,91,3,33,57]
//
//for score in scores{
//    if  score > 40 {
//        println(score)
//    }else{
//        println(score)
//    }
//
//}
//
//var optionalName : String? = "KITTEN"
//var greeting = "It's my greeting!"
//if let name = optionalName{
//    greeting = "Hello,\(name)"
//}
//
//var stringArray = [String]()
//var stringDic   = [String : String]()
//
//var stringArraySimple = []
//var stringDicSimple   = [:]



////---------switch-case---------------
//let vegetable = "red pepper"
//switch vegetable {
//    case "celery":
//        let vegetable = "Add some raisins and make ants on a log."
//    case "cun","sss":
//        let vegetable = "That would be a good answer for my oppotunity."
//    case let x where x.hasSuffix("pepper"):
//        let vegetable = "It's right answer.\(x)"
//    default:
//        let vegetable = "Everything is not good."
//}
//
//
//
//
////--------forin遍历字典-----------
//let forinDic = [
//    "ONE":[1,2,3,4,5],
//    "TWO":[11,22,33,44,55],
//    "THREE":[111,222,333,444,555],
//    "Four":[1111,2222,3333,4444,5555],
//    "Five":[11111,22222,33333,44444,55555],
//]
//var largest = 333
//for (kinds,numbers) in forinDic{
//    for number in numbers{
//        if number > largest && number < 44444{
//            largest = number
//        }
//    }
//}
//
//
//
////-------while、do-while的使用-------
//var n = 2
//while n < 100 {
//    n *= 2
//}
//n
//
//var m = 2
//do{
//    m *= 2
//}while(m < 100)
//
//m
//
//
////------范围的使用：0...4------
//var loop = 0
//for var i = 0 ;i < 4; i++ {
//    loop += 1
//}
//
//loop
//
//var loop2 = 0
//for i in 0..<4 {
//    loop2 += 1
//}
//
//loop2
//
//
////-----函数------
//func greet(name:String,day:String)->String{
//    return "Hello,\(name),today is \(day)"
//}
//greet("KITTEN", "4月1号")
//
//
////----使用元组让函数返回多个值！！------
//func getMinMaxSum(scores:[Int])->(MIN:Int,MAX:Int,SUM:Int){
//
//    var min = scores[0]
//    var max = scores[0]
//    var sum = 0
//    
//    for score in scores{
//        if score > max{
//            max = score
//        }else if score < min{
//            min = score
//        }
//        sum += score
//    }
//    
//    return (min,max,sum)
//}
//
//
//let statistics = getMinMaxSum([5,3,10,3,9])
//statistics.SUM
//statistics.2 //可以用“.返回值” 或者 ".数组下标"的形式获得其中某个返回值
//
//
////--------带可变个数的参数的函数----------
////带可变个数的参数的函数计算总和
//func sumOf(numbers:Int...)->Int{
//    var sum = 0
//    for number in numbers{
//        sum += number
//    }
//    return sum
//}
//
//sumOf(0,23,44,44,11)
//sumOf()
//
////带可变个数的参数的函数计算平均值
//func averageOf(numbers:Int...)->Int{
//    var sum = 0
//    for number in numbers{
//        sum += number
//    }
//    
//    return sum/numbers.count
//}
//
//averageOf(1,2,3,4,5)
//
//
////-------嵌套函数——---------
//func returnFifteen()->Int{
//    var y = 18
//    func add(){
//        y+=5
//    }
//    add()
//    return y
//}
//
//returnFifteen()
//
//
////-------函数作为另一个函数的返回值---------
////(Int ->Int) 必须和 (number: Int)->Int 格式匹配
//func makeIncrementer() -> (Int -> Int) {
//    func addOne(number: Int) -> Int {
//        return 1 + number
//    }
//    return addOne
//}
//var increment = makeIncrementer()
//increment(7)
//
////--------函数作为参数传入另一个函数----------
//func hasAnyMatches(list:[Int],condition:Int->Bool)->Bool{
//    for item in list{
//        if condition(item){
//            return true
//        }
//    }
//    return false
//}
//
//func lessThanTen(number:Int)->Bool{
//    return number < 10
//}
//
//var numbers = [20,19,7,12]
//hasAnyMatches(numbers, lessThanTen)
//
////----用 '{}' 创建一个匿名闭包------
//var blockNumbers = [80,10,20,100]
//blockNumbers.map {
//    (number:Int) -> Int in
//    let result = 3 * number
//    return result
//}

////----创建一个类型已知的闭包------
//var MappedNumbers = [10,20,30,40]
//let mappedNumbers = MappedNumbers.map({ number in 3 * number })
//mappedNumbers


//------通过参数位置引用参数------
//var SortedNumbers = [40,50,60,70]
//let sortedNumbers = sorted(SortedNumbers) { $0 > $1 }
//sortedNumbers // 当一个闭包作为最后一个参数传给一个函数的时候，可以直接跟在括号后面






//****************
//**  对象和类   **
//****************

//----如何创建一个类-----
class Shape{
    var numberOfSides = 0
    func simpleDescription()->String{
        return "A Shape with \(numberOfSides) sides"
    }
}

//-----创建一个类的实例----
var shape = Shape()
shape.numberOfSides = 7
var shapeDes = shape.simpleDescription()


//-----类里面的构造函数、析构函数----
class NamedShape{
    var numberOfSides : Int = 0
    var name : String
    init(name:String){
        self.name = name
    }

    deinit{
        
    }
    
    func simpleDescription()->String{
        return "A shape with \(numberOfSides) sides,is \(name)"
    }
    
}

var tesss = NamedShape(name: "八边形")
tesss.simpleDescription()


//------子类的定义-------
class Circle: NamedShape {
    var radius: Double
    init(r: Double,na:String){
        self.radius = r
        super.init(name: na)
        self.name = "ss"
        //在使用父类的变量之前，必须先call super.init
        //在之类init方法返回之前，必须call super.init
    }
    
    func area()->Double{
        return self.radius * self.radius * M_PI
    }
    
    override func simpleDescription() -> String {
        return "这是重载的圆形"
    }
}

var circle = Circle(r:4,na:"yuanxin")
circle.area()
circle.simpleDescription()



//-----使用getter/setter------
class Triangle: NamedShape{
    var sideLength: Double = 0.0
    init(sideLength:Double, name:String){
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double{
        get{
            return 3*self.sideLength
        }
        set{
            self.sideLength = newValue/3.0
            //newValue 是系统规定的固定名词
        }
    }
    
    override func simpleDescription() -> String {
        return "\(sideLength)"
    }
}

var tri = Triangle(sideLength: 3.1, name: "三角形")
tri.perimeter
tri.perimeter = 9.9
tri.sideLength


//-----willSet/didSet------
//确保三角形的变长总是和正方形的变长相同
class TriAndSqu{
    var tri :Triangle{
        willSet{
            circle.radius = newValue.sideLength
        }
    }
    var circle: Circle{
        willSet{
            tri.sideLength = newValue.radius
        }
    }
    
    init(size: Double,name: String){
        circle = Circle(r: size, na: "圆形")
        tri = Triangle(sideLength: size, name: "三角形")
    }
}

var triandsqu = TriAndSqu(size: 10, name: "test shape")
triandsqu.tri.sideLength
triandsqu.circle.radius



//------类中的叫方法，类外的叫函数，他们的区别------
class Counter{
    var count: Int = 0
    func incrementBy(amount: Int,numberOfTimes: Int){
        count += amount * numberOfTimes
    }
}

var counter = Counter()
counter.incrementBy(2, numberOfTimes: 7)
//方法的参数名需要显式说明一下（第一个参数不用），比如上面的numberOfTimes。而函数都不用显式说明。



//******************
//**  枚举和结构体  **
//******************

//-------如何创建一个枚举--------
enum Rank: Int{
    case Ace = 1
    case Two,Three,Four,Five,Six,Seven,Eight,Nine,Ten
    case Jack,Queen,King
    func simpleDes() ->String{
        switch self{
        case .Ace:
            return "Ace"
        case .Jack:
            return "Jack"
        case .Queen:
            return "Queen"
        case .King:
            return "King"
        default:
            return String(self.rawValue)
        }
    }
}

//在上面的例子中，枚举原始值的类型是Int，所以你只需要设置第一个原始值。剩下的原始值会按照顺序赋值。
let ace = Rank.Ace
let aceRawValue = ace.rawValue

//使用‘rawValue'在原始值和枚举值之间转换
if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDes()
}


//原始值可以不设置
enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
    
}

let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()

//-------如何创建一个结构体，与类之间最大的一个区别是什么--------
//结构体和类之间有很多相似之处，如方法和构造器；最大的区别就是：结构体是传值，类是传引用。

struct Card {
    var rank : Rank
    var suit : Suit
    func simpleDescription() -> String{
        return "The \(rank.simpleDes()) of \(suit.simpleDescription()) "
    }
}

//结构体会自动生成init方法，其中的参数就是结构体里面定义的var，所以结构体是直接传值的
let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()




//-------如何声明一个协议--------
protocol ExampleProtocol{
    var simpleDescription : String{get}
    mutating func adjust()
}

//类、枚举、结构体如何实现协议
//类
class simpleClass: ExampleProtocol{
    var simpleDescription : String = "A very simple class"
    var anothorProperty: Int  = 56908
    func adjust() {
        simpleDescription += " Now 100% adjusted"
    }
}
var a = simpleClass()
a.adjust()
let aDescription = a.simpleDescription


//结构体
struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription


//---------如何声明一个拓展------------
extension Int:ExampleProtocol{
    var simpleDescription : String{
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
    
}

7.simpleDescription


