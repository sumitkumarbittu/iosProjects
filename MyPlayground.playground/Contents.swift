import Cocoa

var greeting = "Hello, playground"

protocol P {
    init(value : Int) {
    }
}

class A : P {
    required init(value : Int) {
        
    }
}

class B : A {
    required init(value : Int) {
         self.init()
    }
    
    init(x : Int) {
        
    }
}

protocol Named {
    var name : String
    var age : Int
}















let string = "Hello, World"
print(string)

let number = 42
print(number)

let boolean = false
print(boolean)

class AA{
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
var a = AA(name:"Sumi",age:20)
print(a)
