let const = 20
var curr = 0
var x=0, y=1,z=2
for index in 1..10 {
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
