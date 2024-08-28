import UIKit

let numberThatIsSqrt = 9

enum UserNumber: Error {
    case tooHigh
    case tooLow
    case noRoot
}

func intSqrt(num: Int) throws -> Int {
    if num <= 0 {
        throw UserNumber.tooLow
    }
    if num >= 10001 {
        throw UserNumber.tooHigh
    }
    
    for i in 1...100 {
        if i * i == num {
            return i
        }
    }
    
    throw UserNumber.noRoot
}

do {
    let result = try intSqrt(num: numberThatIsSqrt)
    print("Result: \(result)")
} catch UserNumber.tooLow {
    print("Error: Number is too low.")
} catch UserNumber.tooHigh {
    print("Error: Number is too high.")
} catch UserNumber.noRoot {
    print("Error: No integer square root found.")
} catch {
    print("Error.")
}
