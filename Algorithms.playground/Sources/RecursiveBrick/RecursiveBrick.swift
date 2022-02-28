import Foundation

public func stepsRecurse(_ n: Int) {
    if(n == 0) {
        return
    } else {
        stepsRecurse(n - 1)
        var bricks = ""
        for _ in 0..<n {
            bricks += "#"
        }
        print(bricks)
        return
    }
}
