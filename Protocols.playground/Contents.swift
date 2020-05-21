import UIKit

var str = "Hello, playground"

class Button {
    let title: String
    var delegate: ButtonDelegateProtocol?
    init(title: String, delegate:ButtonDelegateProtocol) {
        self.title = title
        self.delegate = delegate
    }
    func buttonTapped() {
        if let delegate = self.delegate
        { delegate.didTapButton(button: self)
        }
    }
}

protocol ButtonDelegateProtocol {
    func didTapButton(button: Button)
}

class ButtonDelegateOne: ButtonDelegateProtocol {
    func didTapButton(button: Button) {
        print("You tapped the button delegateOne \(button.title).")
    }
}

let button = Button(title: "MyButton", delegate: ButtonDelegateOne())
button.buttonTapped()
class ButtonDelegateTwo: ButtonDelegateProtocol {
    func didTapButton(button: Button) {
        print("You tapped the button on delegateTwo \(button.title).")
    }
}
button.delegate = ButtonDelegateTwo()
button.buttonTapped()
button.delegate = ButtonDelegateOne()
button.buttonTapped()
