import Foundation






extension ViewController {
    
    // MARK: functions for calc's operations & buttons pressings
    func numberSet(number: String) {
        if operation == "0" {
            operation = number
        } else if operation.contains("*") || operation.contains("/") || operation.contains("-") || operation.contains("+") {
            operation += number
        } else {
            operation += number
        }
    }
    
    func actionSet(action: Character) {
        var result: Double = 0
        var firstNumber = ""
        var secondNumber = ""
        if operation.first != "-" {
            firstNumber = String(operation.prefix { char in
                char != action
            })
            secondNumber = String(operation.drop(while: { char in
                char != action
            }))
            secondNumber.removeFirst()
        } else {
            var temp = operation.dropFirst()
            temp = temp.prefix { char in
                char != action
            }
            firstNumber = "-\(temp)"
            secondNumber = String(operation.dropFirst())
            secondNumber = String(secondNumber.drop(while: { char in
                char != action
            }))
            secondNumber.removeFirst()
        }
        
        switch action {
        case "+":
            result = (Double(firstNumber) ?? 0) + (Double(secondNumber) ?? 0)
        case "-":
            result = (Double(firstNumber) ?? 0) - (Double(secondNumber) ?? 0)
        case "*":
            result = (Double(firstNumber) ?? 0) * (Double(secondNumber) ?? 0)
        case "/":
            result = (Double(firstNumber) ?? 0) / (Double(secondNumber) ?? 0)
        default:
            break
        }
        
        operation = String(result)
        firstNumber.removeAll()
        secondNumber.removeAll()
    }
    
    func procentsSet() {
        if operation != "0" {
            operation = "\((Double(operation) ?? 0)/100)"
        }
    }
    func plusMinusSet() {
        if operation == "0" && !operation.contains("-") {
            operation.removeAll()
            operation.insert("-", at: operation.startIndex)
        } else if operation.last == "-" || operation.last == "+" || operation.last == "/" || operation.last == "*" {
            operation.append("-")
        } else if operation.first == "-" {
            operation.removeFirst()
        } else {
            operation.insert("-", at: operation.startIndex)
        }
    }
    func commaSet() {
        let count = operation
            .filter{$0 == "."}
            .count
        if count == 0 {
            operation += "."
        } else if count < 2 && (operation.contains("-") || operation.contains("+") || operation.contains("*") || operation.contains("/")) {
            operation += "."
        } else if count > 2 {
            operation.removeLast()
        }
    }
    func operationSet(sign: String) {
        let count = temp
            .filter{$0 == "+" || $0 == "-" || $0 == "*" || $0 == "/" }
            .count
        if count == 1 && operation != "0" && (operation.last == "-" || operation.last == "+" || operation.last == "*" || operation.last == "/") {
            operation.removeLast()
            operation += sign
        } else if operation != "0" && count == 0 {
            operation += sign
        } else if count > 1 {
            operation.removeLast()
        }
    }
}

