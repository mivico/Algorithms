import Foundation

public struct Coord: SummableMultipliable, Comparable {
    public static func < (lhs: Coord, rhs: Coord) -> Bool {
        return lhs.x < rhs.x && lhs.y < rhs.y
    }
    
    public static func > (lhs: Coord, rhs: Coord) -> Bool {
        return lhs.x > rhs.x && lhs.y > rhs.y
    }
    
    public static func == (lhs: Coord, rhs: Coord) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
    
    public static func != (lhs: Coord, rhs: Coord) -> Bool {
        return lhs.x != rhs.x && lhs.y != rhs.y
    }
    
    var x: Int
    var y: Int
    
    public static func + (lhs: Coord, rhs: Coord) -> Coord {
        return Coord(lhs.x + rhs.x, lhs.y + rhs.y)
    }
    
    public static func - (lhs: Coord, rhs: Coord) -> Coord {
        return Coord(lhs.x - rhs.x, lhs.y - rhs.y)
    }
    
    public static func * (lhs: Coord, rhs: Coord) -> Coord {
        return Coord(lhs.x * rhs.x, lhs.y * rhs.y)
    }
    
    public init(_ x: Int, _ y: Int) {
        self.x = x
        self.y = y
    }
}

public func csp(_ coord : Coord) -> Int {
    if(coord.x == 0 || coord.y == 0) {
        return 1
    }
    
    //Find direction
    var xDirection = 1
    var yDirection = 1
    if(coord.x < 0) {
        xDirection = -1
    }
    
    if(coord.y < 0) {
        yDirection = -1
    }
    return csp(coord - Coord(xDirection, 0)) + csp(coord - Coord(0, yDirection))
}

public func csp2(_ m: Int, _ n: Int) -> Int{
    if(m == 0 || n == 0) {
        return 1
    } else {
        return csp2(m-1, n) + csp2(m, n-1)
    }
}

protocol SummableMultipliable: Equatable {
    static func +(lhs: Self, rhs: Self) -> Self
    static func -(lhs: Self, rhs: Self) -> Self
    static func *(lhs: Self, rhs: Self) -> Self
}
