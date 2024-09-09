import UIKit

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
func filterEven(number: Int) -> Bool {
    let answer = number.isMultiple(of: 2)
    return !answer
}

let filteredNumbers = luckyNumbers.filter(filterEven)
let fsNumbers = filteredNumbers.sorted()

func string(number: Int) -> String {
    return "\(number) is a lucky number"
}

let luckyNumStr = fsNumbers.map(string)
print(luckyNumStr)

func printIt(words: String) {
    print("message")
}

luckyNumStr.map(printIt)
