import UIKit
import Foundation
import Darwin

var resultArray:[String] = []
var base = Float(-2)
var power = Int(3)
var start = Double(0)
var end = Double(0)

start = Date().timeIntervalSince1970
toThePower(number: base, power: power)
end = Date().timeIntervalSince1970
print("Recursive: \(end - start)")

start = Date().timeIntervalSince1970
trivialPower(base, power)
end = Date().timeIntervalSince1970
print("Trivial: \(end - start)")


