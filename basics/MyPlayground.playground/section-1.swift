// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let const = 20
var curr = 0
var x=0, y=1,z=2
for index in 1...10 {
    println(index)
}
let names = ["papa","buba","diop"]

for i in names {
    println(i)
}

for i in 0..<names.count {
    println(i)
}

let dic = ["chef":"pupa", "bupa":"diop"]

for (key, value) in dic {
    println ("key = \(key), value = \(value)")
}

println(dic["chef"])

func contExtNames(chef:Int=0, pupa:Int=0)->Bool{
    println ("\(chef) + \(pupa)")
    return true
}

contExtNames(chef:1, pupa:2)
contExtNames()

func backwards(s1:String, s2:String)-> Bool {
    return s1>s2
}

var reversed = sorted(names, backwards)

reversed = sorted(names, {(s1:String, s2:String)-> Bool in return s1>s2})

reversed = sorted(names, {s1, s2 in return s1>s2})
reversed = sorted(names, {s1, s2 in s1>s2})
reversed = sorted(names, {$0>$1})
reversed = sorted(names, >)
reversed = sorted(names){$0>$1}

let digitNames = [0:"Zero", 1:"One", 2:"Two", 3:"Three", 4:"Four",5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"]

let numbers = [16,58,510]

let strings = numbers.map{
    (var number) -> String in
    var output = ""
    while number > 0{
        output = digitNames[number % 10]! + output
        number /= 10
    }
    return output
}

class VideoMode{
    var chef = "Pupa"
    
}

let inst = VideoMode()

inst.chef = "Chef"

let vge = VideoMode(chef:"Chef")