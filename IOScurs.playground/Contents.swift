print("Int max: ", Int.max)
print("Int min: ", Int.min)
print("Int8 max: ", Int8.max)
print("Int8 min: ", Int8.min)
print("UInt max: ", UInt.max)
print("UInt min: ", UInt.min)
print("UInt8 max: ", UInt8.max)
print("UInt8 min: ", UInt8.min)
let a = 125
let b: Float = -12.54
let c = 67.12341
let d = Int(Double(a) + Double (b) + c)
let e: Float = Float(Double(a) + Double (b) + c)
let f: Double = Double(Double(a) + Double (b) + c)
if Double(d) > f {
    print(d)
} else {
    print(f)
}
