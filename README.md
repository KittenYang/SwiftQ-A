# SwiftQ-A
学习Swift过程中自己出的一些Q&amp;A问答题，方便巩固知识点。Swift learning Q&amp;A.



##简单值
1）声明变量、声明常量（以及如何声明类型）

     var str = "Hello, playground"

     let num = 22

     let  : Double = 44.0


2）简单值会隐式转换成其他类型吗？如果不是，该如何显示转换吗？

     不会。

     hello = String(99)

3）其他值转换成‘字符串’有什么更简单的方法？

     let apples = "I have \(apples) apples."

4）直接创建数组、字典；如果访问？创建空数组、空字典（如果类型可以直接推断出来）；

     var shoppingList = ["fishes","potatoes","eggs","juice"]

     var dic = [

        "ONE":"one",

         "TWO":"two",

         "THREE":"three",

         "FOUR":"four",

         "APP":"application",

     ]

     shoppingList[2] = "banana"

     dic["APP"] = "apples"



     var stringArray = [String]()

     var stringDic   = [String : String]()



     var stringArraySimple = []

     var stringDicSimple   = [:]



##控制流

1）有哪五种？分别的语法

     使用if和switch来进行条件操作，使用for-in、for、while和do-while来进行循环。

2）if语句中，if score {....} 这样的代码可以吗？

    不可以。if语句中条件表达式必须是一个布尔表达式，score不会隐式地与0做比较。

3）如何用if let处理值缺失的情况？

    在类型后面加一个问号来标记这个变量的值是可选的。



     var optionalName : String? = "KITTEN"

     var greeting = "It's my greeting!"

     if let name = optionalName{

        greeting = "Hello,\(name)"

     }

    //如果optionalName的值为nil，那么if的条件判断为false，代码块中代码的不会执行。如果不是nil，则会把值赋给let后面的常量，这样代码块中可以使用这个值了。



4）如何使用switch？需要加上break吗？

     let vegetable = "red pepper"
     switch vegetable {
     case "celery":
         let vegetableComment = "Add some raisins and make ants on a log."
     case "cucumber", "watercress":
         let vegetableComment = "That would make a good tea sandwich."
     case let x where x.hasSuffix("pepper"):
         let vegetableComment = "Is it a spicy \(x)?"
     default:
         let vegetableComment = "Everything tastes good in soup."
     }

     不需要使用break，因为switch匹配到子句之后就会退出switch，不会继续往下运行。
5）用for-in语句遍历字典？

     let forinDic = [

        "ONE":[1,2,3,4,5],

         "TWO":[11,22,33,44,55],

         "THREE":[111,222,333,444,555],

         "Four":[1111,2222,3333,4444,5555],

         "Five":[11111,22222,33333,44444,55555],

     ]

     var largest = 333

     for (kinds,numbers) in forinDic{



        for number in numbers{

            if number > largest && number < 44444{

                largest = number

            }

         }

     }



6）使用while、do-while   

     while n < 100 {

        n *= 2

     }

    

     do{

        m *= 2

     }while(m < 100)



7）swift中一种特殊的表示取值范围的方法

     for var i = 0 ;i < 4; i++ 

     for i in 0..<4 // 0..<4表示不包含上边界。如果要包含上边界：0...4    



##函数和闭包
1）如何声明函数？如何调用函数？如何指定函数的返回值？
    
     func greet(name:String,day:String)->String{

        return "Hello,\(name),today is \(day)"

     }

     greet("KITTEN", "4月1号")



2）多个返回值的函数

func getMinMaxSum(scores:[Int])->(MIN:Int,MAX:Int,SUM:Int){

    var min = scores[0]

    var max = scores[0]

    var sum = 0

    

    for score in scores{

        if score > max{

            max = score

        }else if score < min{

            min = score

        }

        sum += score

    }

    

    return (min,max,sum)

}



let statistics = getMinMaxSum([5,3,10,3,9])

statistics.SUM

statistics.2 //可以用“.返回值” 或者 ".数组下标"的形式获得其中某个返回值



3）带可变个数的参数的函数

//用可变个数的参数的函数实现计算平均值的函数，要求输入的参数数目随机



func averageOf(numbers:Int...)->Int{

    var sum = 0

    for number in numbers{

        sum += number

    }

    

    return sum/numbers.count

}

averageOf(1,2,3,4,5)



4）如何使用嵌套函数?

     func returnFifteen()->Int{

        var y = 18

         func add(){

            y+=5

         }

         add()

        return y

     }

     returnFifteen()



5）函数怎么作为另一个函数的返回值？

     func twoFuncs()->(Void ->Int){

        func oneFun()->Int{

            return 5

        }

        return oneFun

     }

     var test = twoFuncs()

     test()



6）函数如何作为参数传入另一个函数

     func hasAnyMatches(list:[Int],condition:Int->Bool)->Bool{

        for item in list{

            if condition(item){

                return true

            }

        }

        return false

     }

     func lessThanTen(number:Int)->Bool{

        return number < 10

     }

     var numbers = [20,19,7,12]

     hasAnyMatches(numbers, lessThanTen)



7）用 '{}' 创建一个匿名闭包

     var blockNumbers = [80,10,20,100]

     blockNumbers.map {

        (number:Int) -> Int in

         let result = 3 * number

         return result

     }



8）创建一个类型已知的闭包

     var MappedNumbers = [10,20,30,40]

     let mappedNumbers = MappedNumbers.map({ number in 3 * number })

     mappedNumbers



9）当一个闭包作为最后一个参数的时候可以怎么写？

     var SortedNumbers = [40,50,60,70]

     let sortedNumbers = sorted(SortedNumbers) { $0 > $1 }

     sortedNumbers   //通过参数位置引用参数

     //当一个闭包作为最后一个参数传给一个函数的时候，可以直接跟在括号后面
    

##对象和类

1）如何创建一个类

     class Shape{

        var numberOfSides = 0

         func simpleDescription()->String{

            return "A Shape with \(numberOfSides) sides"

        }

     }



2）创建一个类的实例

     var shape = Shape()

     shape.numberOfSides = 7

     var shapeDes = shape.simpleDescription()



3）类里面的构造函数、析构函数

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



4）子类的定义

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







5）使用getter/setter

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



6）什么情况下需要使用willSet/didSet？如何使用？

    当不需要计算属性的时候，但仍然需要在设置一个新值之前或之后需要的代码可以写在willSet/didSet里。

    如：确保三角形的边长总是和正方形的变长相同

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



7）什么是方法？什么是函数？它们的区别？

     类中的func叫方法，类外的func叫函数。

     class Counter{

        var count: Int = 0

         func incrementBy(amount: Int,numberOfTimes: Int){

            count += amount * numberOfTimes

         }

     }

     var counter = Counter()

     counter.incrementBy(2, numberOfTimes: 7)

     //方法的参数名需要显式说明一下（第一个参数不用），比如上面的numberOfTimes。而函数的参数都不用显式说明。










