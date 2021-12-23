import Foundation
import UIKit




extension ViewController {
    
    func acSetTapPolitics() {
        let touchEvent = UILongPressGestureRecognizer(target: self,
                                                      action: #selector(acTouchFunc))
        touchEvent.minimumPressDuration = 0
        acZ.addGestureRecognizer(touchEvent)
    }
    @objc private func acTouchFunc(gesture: UILongPressGestureRecognizer) {
        if gesture.state == .began {
            acZ.backgroundColor = .gray
        } else {
            acZ.backgroundColor = .darkGray
            operation.removeAll()
            operation = "0"
        }
    }
    func plusMinusSetTapPolitics() {
        let touchEvent = UILongPressGestureRecognizer(target: self,
                                                      action: #selector(plusMinusTouchFunc))
        touchEvent.minimumPressDuration = 0
        plusMinus.addGestureRecognizer(touchEvent)
    }
    @objc private func plusMinusTouchFunc(gesture: UILongPressGestureRecognizer) {
        if gesture.state == .began {
            plusMinus.backgroundColor = .gray
        } else {
            plusMinus.backgroundColor = .darkGray
            plusMinusSet()
        }
    }
    func procentsSetTapPolitics() {
        let touchEvent = UILongPressGestureRecognizer(target: self,
                                                      action: #selector(procentsTouchFunc))
        touchEvent.minimumPressDuration = 0
        procents.addGestureRecognizer(touchEvent)
    }
    @objc private func procentsTouchFunc(gesture: UILongPressGestureRecognizer) {
        if gesture.state == .began {
            procents.backgroundColor = .gray
        } else {
            procents.backgroundColor = .darkGray
            procentsSet()
        }
    }
    func sevenSetTapPolitics() {
        let touchEvent = UILongPressGestureRecognizer(target: self,
                                                      action: #selector(sevenTouchFunc))
        touchEvent.minimumPressDuration = 0
        seven.addGestureRecognizer(touchEvent)
    }
    @objc private func sevenTouchFunc(gesture: UILongPressGestureRecognizer) {
        if gesture.state == .began {
            seven.backgroundColor = .systemGray2
        } else {
            seven.backgroundColor = .gray
            numberSet(number: "7")
        }
    }
    func eightSetTapPolitics() {
        let touchEvent = UILongPressGestureRecognizer(target: self,
                                                      action: #selector(eightTouchFunc))
        touchEvent.minimumPressDuration = 0
        eight.addGestureRecognizer(touchEvent)
    }
    @objc private func eightTouchFunc(gesture: UILongPressGestureRecognizer) {
        if gesture.state == .began {
            eight.backgroundColor = .systemGray2
        } else {
            eight.backgroundColor = .gray
            numberSet(number: "8")
        }
    }
    func nineSetTapPolitics() {
        let touchEvent = UILongPressGestureRecognizer(target: self,
                                                      action: #selector(nineTouchFunc))
        touchEvent.minimumPressDuration = 0
        nine.addGestureRecognizer(touchEvent)
    }
    @objc private func nineTouchFunc(gesture: UILongPressGestureRecognizer) {
        if gesture.state == .began {
            nine.backgroundColor = .systemGray2
        } else {
            nine.backgroundColor = .gray
            numberSet(number: "9")
        }
    }
    func fourSetTapPolitics() {
        let touchEvent = UILongPressGestureRecognizer(target: self,
                                                      action: #selector(fourTouchFunc))
        touchEvent.minimumPressDuration = 0
        four.addGestureRecognizer(touchEvent)
    }
    @objc private func fourTouchFunc(gesture: UILongPressGestureRecognizer) {
        if gesture.state == .began {
            four.backgroundColor = .systemGray2
        } else {
            four.backgroundColor = .gray
            numberSet(number: "4")
        }
    }
    func fiveSetTapPolitics() {
        let touchEvent = UILongPressGestureRecognizer(target: self,
                                                      action: #selector(fiveTouchFunc))
        touchEvent.minimumPressDuration = 0
        five.addGestureRecognizer(touchEvent)
    }
    @objc private func fiveTouchFunc(gesture: UILongPressGestureRecognizer) {
        if gesture.state == .began {
            five.backgroundColor = .systemGray2
        } else {
            five.backgroundColor = .gray
            numberSet(number: "5")
        }
    }
    func sixSetTapPolitics() {
        let touchEvent = UILongPressGestureRecognizer(target: self,
                                                      action: #selector(sixTouchFunc))
        touchEvent.minimumPressDuration = 0
        six.addGestureRecognizer(touchEvent)
    }
    @objc private func sixTouchFunc(gesture: UILongPressGestureRecognizer) {
        if gesture.state == .began {
            six.backgroundColor = .systemGray2
        } else {
            six.backgroundColor = .gray
            numberSet(number: "6")
        }
    }
    func oneTapPolitics() {
        let touchEvent = UILongPressGestureRecognizer(target: self,
                                                      action: #selector(oneTouchFunc))
        touchEvent.minimumPressDuration = 0
        one.addGestureRecognizer(touchEvent)
    }
    @objc private func oneTouchFunc(gesture: UILongPressGestureRecognizer) {
        if gesture.state == .began {
            one.backgroundColor = .systemGray2
        } else {
            one.backgroundColor = .gray
            numberSet(number: "1")
        }
    }
    func twoSetTapPolitics() {
        let touchEvent = UILongPressGestureRecognizer(target: self,
                                                      action: #selector(twoTouchFunc))
        touchEvent.minimumPressDuration = 0
        two.addGestureRecognizer(touchEvent)
    }
    @objc private func twoTouchFunc(gesture: UILongPressGestureRecognizer) {
        if gesture.state == .began {
            two.backgroundColor = .systemGray2
        } else {
            two.backgroundColor = .gray
            numberSet(number: "2")
        }
    }
    func threeSetTapPolitics() {
        let touchEvent = UILongPressGestureRecognizer(target: self,
                                                      action: #selector(threeTouchFunc))
        touchEvent.minimumPressDuration = 0
        three.addGestureRecognizer(touchEvent)
    }
    @objc private func threeTouchFunc(gesture: UILongPressGestureRecognizer) {
        if gesture.state == .began {
            three.backgroundColor = .systemGray2
        } else {
            three.backgroundColor = .gray
            numberSet(number: "3")
        }
    }
    func zeroSetTapPolitics() {
        let touchEvent = UILongPressGestureRecognizer(target: self,
                                                      action: #selector(zeroTouchFunc))
        touchEvent.minimumPressDuration = 0
        zero.addGestureRecognizer(touchEvent)
    }
    @objc private func zeroTouchFunc(gesture: UILongPressGestureRecognizer) {
        if gesture.state == .began {
            zero.backgroundColor = .systemGray2
        } else {
            zero.backgroundColor = .gray
            numberSet(number: "0")
        }
    }
    func commaSetTapPolitics() {
        let touchEvent = UILongPressGestureRecognizer(target: self,
                                                      action: #selector(commaTouchFunc))
        touchEvent.minimumPressDuration = 0
        comma.addGestureRecognizer(touchEvent)
    }
    @objc private func commaTouchFunc(gesture: UILongPressGestureRecognizer) {
        if gesture.state == .began {
            comma.backgroundColor = .systemGray2
        } else {
            comma.backgroundColor = .gray
            commaSet()
        }
    }
    func multiplySetTapPolitics() {
        let touchEvent = UILongPressGestureRecognizer(target: self,
                                                      action: #selector(multiplyTouchFunc))
        touchEvent.minimumPressDuration = 0
        muliply.addGestureRecognizer(touchEvent)
    }
    @objc private func multiplyTouchFunc(gesture: UILongPressGestureRecognizer) {
        if gesture.state == .began {
            muliply.layer.borderWidth = 2.0
        } else {
            muliply.layer.borderWidth = 0.15
            operationSet(sign: "*")
        }
    }
    func minusSetTapPolitics() {
        let touchEvent = UILongPressGestureRecognizer(target: self,
                                                      action: #selector(minusTouchFunc))
        touchEvent.minimumPressDuration = 0
        minus.addGestureRecognizer(touchEvent)
    }
    @objc private func minusTouchFunc(gesture: UILongPressGestureRecognizer) {
        if gesture.state == .began {
            minus.layer.borderWidth = 2.0
        } else {
            minus.layer.borderWidth = 0.15
            operationSet(sign: "-")
        }
    }
    func summSetTapPolitics() {
        let touchEvent = UILongPressGestureRecognizer(target: self,
                                                      action: #selector(summTouchFunc))
        touchEvent.minimumPressDuration = 0
        plus.addGestureRecognizer(touchEvent)
    }
    @objc private func summTouchFunc(gesture: UILongPressGestureRecognizer) {
        if gesture.state == .began {
            plus.layer.borderWidth = 2.0
        } else {
            plus.layer.borderWidth = 0.15
            operationSet(sign: "+")
        }
    }
    func devideSetTapPolitics() {
        let touchEvent = UILongPressGestureRecognizer(target: self,
                                                      action: #selector(devideTouchFunc))
        touchEvent.minimumPressDuration = 0
        devide.addGestureRecognizer(touchEvent)
    }
    @objc private func devideTouchFunc(gesture: UILongPressGestureRecognizer) {
        if gesture.state == .began {
            devide.layer.borderWidth = 2.0
        } else {
            devide.layer.borderWidth = 0.15
            operationSet(sign: "/")
        }
    }
    func equalSetTapPolitics() {
        let touchEvent = UILongPressGestureRecognizer(target: self,
                                                      action: #selector(equalTouchFunc))
        touchEvent.minimumPressDuration = 0
        equal.addGestureRecognizer(touchEvent)
    }
    @objc private func equalTouchFunc(gesture: UILongPressGestureRecognizer) {
        if gesture.state == .began {
            equal.layer.borderWidth = 2.0
        } else {
            equal.layer.borderWidth = 0.15
            let check = temp.drop { char in
                char != "*" && char != "/" && char != "-" && char != "+"
            }
            if check.first == "+" {
                actionSet(action: "+")
            } else if check.first == "-" {
                actionSet(action: "-")
            } else if check.first == "*" {
                actionSet(action: "*")
            } else if check.first == "/" {
                actionSet(action: "/")
            }
        }
    }
}

