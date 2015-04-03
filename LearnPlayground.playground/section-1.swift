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






//对象和类

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


