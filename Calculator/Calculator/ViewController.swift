import UIKit

final class ViewController: UIViewController {
    
    // MARK: убираем повторы символов
    var temp = ""
    var operation = "0" {
        didSet {
            if operation.contains("//") {
                operation = operation.replacingOccurrences(of: "//", with: "/")
            } else if operation.contains("++") {
                operation = operation.replacingOccurrences(of: "++", with: "+")
            } else if operation.contains("--") {
                operation = operation.replacingOccurrences(of: "--", with: "-")
            } else if operation.contains("**") {
                operation = operation.replacingOccurrences(of: "**", with: "*")
            } else if operation.contains("..") {
                operation = operation.replacingOccurrences(of: "..", with: ".")
            }
            else if operation.last == "0" {
                operation = String(operation.prefix(while: { char in
                    char != "."
                }))
            }
            log.text = operation
            temp = operation
            if temp.first == "-" {
                temp.removeFirst()
            }
        }
    }
    
    let log: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .right
        lbl.backgroundColor = .black
        lbl.textColor = .white
        lbl.font = .systemFont(ofSize: 100, weight: .light)
        lbl.text = "0"
        lbl.adjustsFontSizeToFitWidth = true 
        return lbl
    }()
    
    let acZ: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .darkGray
        btn.setTitle("a/c", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 30, weight: .medium)
        return btn 
    }()
    let plusMinus: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .darkGray
        btn.titleLabel?.font = .systemFont(ofSize: 30, weight: .medium)
        btn.setTitle("+/-", for: .normal)
        return btn
    }()
    let procents: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .darkGray
        btn.titleLabel?.font = .systemFont(ofSize: 30, weight: .medium)
        btn.setTitle("%", for: .normal)
        return btn
    }()
    let devide: UIButton = {
        let btn = UIButton()
        btn.setTitle("/", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 30, weight: .medium)
        btn.backgroundColor = .systemOrange
        return btn
    }()
    let seven: UIButton = {
        let btn = UIButton()
        btn.setTitle("7", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 30, weight: .medium)
        btn.backgroundColor = .gray
        return btn
    }()
    let eight: UIButton = {
        let btn = UIButton()
        btn.setTitle("8", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 30, weight: .medium)
        btn.backgroundColor = .gray
        return btn
    }()
    let nine: UIButton = {
        let btn = UIButton()
        btn.setTitle("9", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 30, weight: .medium)
        btn.backgroundColor = .gray
        return btn
    }()
    let muliply: UIButton = {
        let btn = UIButton()
        btn.setTitle("x", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 30, weight: .medium)
        btn.backgroundColor = .systemOrange
        return btn
    }()
    let four: UIButton = {
        let btn = UIButton()
        btn.setTitle("4", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 30, weight: .medium)
        btn.backgroundColor = .gray
        return btn
    }()
    let five: UIButton = {
        let btn = UIButton()
        btn.setTitle("5", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 30, weight: .medium)
        btn.backgroundColor = .gray
        return btn
    }()
    let six: UIButton = {
        let btn = UIButton()
        btn.setTitle("6", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 30, weight: .medium)
        btn.backgroundColor = .gray
        return btn
    }()
    let minus: UIButton = {
        let btn = UIButton()
        btn.setTitle("-", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 30, weight: .medium)
        btn.backgroundColor = .systemOrange
        return btn
    }()
    let one: UIButton = {
        let btn = UIButton()
        btn.setTitle("1", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 30, weight: .medium)
        btn.backgroundColor = .gray
        return btn
    }()
    let two: UIButton = {
        let btn = UIButton()
        btn.setTitle("2", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 30, weight: .medium)
        btn.backgroundColor = .gray
        return btn
    }()
    let three: UIButton = {
        let btn = UIButton()
        btn.setTitle("3", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 30, weight: .medium)
        btn.backgroundColor = .gray
        return btn
    }()
    let plus: UIButton = {
        let btn = UIButton()
        btn.setTitle("+", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 30, weight: .medium)
        btn.backgroundColor = .systemOrange
        return btn
    }()
    let zero: UIButton = {
        let btn = UIButton()
        btn.setTitle("0", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 30, weight: .medium)
        btn.backgroundColor = .gray
        btn.titleLabel?.textAlignment = .right
        return btn
    }()
    let zeroFriend: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .gray
        return btn
    }()
    let comma: UIButton = {
        let btn = UIButton()
        btn.setTitle(",", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 30, weight: .medium)
        btn.backgroundColor = .gray
        return btn
    }()
    let equal: UIButton = {
        let btn = UIButton()
        btn.setTitle("=", for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 30, weight: .medium)
        btn.backgroundColor = .systemOrange
        return btn
    }()
    
    let customStackFirstStroke: UIStackView = {
        let stck = UIStackView()
        stck.alignment = .fill
        stck.axis = .horizontal
        stck.distribution = .fillEqually
        stck.spacing = 1
        return stck
    }()
    let customStackSecondStroke: UIStackView = {
        let stck = UIStackView()
        stck.alignment = .fill
        stck.axis = .horizontal
        stck.distribution = .fillEqually
        stck.spacing = 1
        return stck
    }()
    let customStackThirdStroke: UIStackView = {
        let stck = UIStackView()
        stck.alignment = .fill
        stck.axis = .horizontal
        stck.distribution = .fillEqually
        stck.spacing = 1
        return stck
    }()
    let customStackFourthStroke: UIStackView = {
        let stck = UIStackView()
        stck.alignment = .fill
        stck.axis = .horizontal
        stck.distribution = .fillEqually
        stck.spacing = 1
        return stck
    }()
    let customStackFifthStroke: UIStackView = {
        let stck = UIStackView()
        stck.alignment = .fill
        stck.axis = .horizontal
        stck.distribution = .fillEqually
        stck.spacing = 1
        return stck
    }()
    
    let superStack: UIStackView = {
        let stck = UIStackView()
        stck.alignment = .fill
        stck.axis = .vertical
        stck.distribution = .fillEqually
        stck.spacing = 1
        stck.translatesAutoresizingMaskIntoConstraints = true
        return stck
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(log)
        customStackFirstStroke.addArrangedSubview(acZ)
        customStackFirstStroke.addArrangedSubview(plusMinus)
        customStackFirstStroke.addArrangedSubview(procents)
        customStackFirstStroke.addArrangedSubview(devide)
        customStackSecondStroke.addArrangedSubview(seven)
        customStackSecondStroke.addArrangedSubview(eight)
        customStackSecondStroke.addArrangedSubview(nine)
        customStackSecondStroke.addArrangedSubview(muliply)
        customStackThirdStroke.addArrangedSubview(four)
        customStackThirdStroke.addArrangedSubview(five)
        customStackThirdStroke.addArrangedSubview(six)
        customStackThirdStroke.addArrangedSubview(minus)
        customStackFourthStroke.addArrangedSubview(one)
        customStackFourthStroke.addArrangedSubview(two)
        customStackFourthStroke.addArrangedSubview(three)
        customStackFourthStroke.addArrangedSubview(plus)
        customStackFifthStroke.addArrangedSubview(zeroFriend)
        customStackFifthStroke.addArrangedSubview(zero)
        customStackFifthStroke.addArrangedSubview(comma)
        customStackFifthStroke.addArrangedSubview(equal)
        superStack.addArrangedSubview(customStackFirstStroke)
        superStack.addArrangedSubview(customStackSecondStroke)
        superStack.addArrangedSubview(customStackThirdStroke)
        superStack.addArrangedSubview(customStackFourthStroke)
        superStack.addArrangedSubview(customStackFifthStroke)
        view.addSubview(superStack)
        superFunc()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        log.frame = CGRect(x: view.bounds.minX,
                           y: view.bounds.minY,
                           width: view.bounds.width,
                           height: view.bounds.height/4)
        superStack.frame = CGRect(x: view.bounds.minX,
                                  y: view.bounds.height/4,
                                  width: view.bounds.width,
                                  height: view.bounds.height - log.bounds.height)
    }
}


