import Foundation


let testString = "wilItWorkblazyIOSwilItWorkblazyIOSwilItWorkblazyIOSwilItWorkblazyIOS"

func areThereMultipleChars(input:String) -> Bool {
    return Set(Array(input)).count != Array(input).count
}

func areThereMultipleChars1(input:String) -> Bool {
    var dict:[String.Element:Int] = [:]
    for item in input {
        if let count = dict[item] {
           dict[item] = count + 1
            return true
        } else {
            dict[item] = 1
        }
    }
    return false
}

// Time Space measurement

// Function to measure execution time
func measureExecutionTime(block: () -> Void) -> Double {
    let start = CFAbsoluteTimeGetCurrent()
    block()
    let end = CFAbsoluteTimeGetCurrent()
    return end - start
}




// Benchmarking the example function

let executionTime = measureExecutionTime {
    let _ = areThereMultipleChars1(input: testString)
}
print("Execution time: \(executionTime) seconds")


