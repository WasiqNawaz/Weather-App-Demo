/********* Developed by Drudots Technology *********/
/******* https://www.drudotstech.com *********/

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension UILabel {
    func setTextSpacingBy(value: Double) {
        if let textString = self.text {
            let attributedString = NSMutableAttributedString(string: textString)
            attributedString.addAttribute(NSAttributedString.Key.kern, value: value, range: NSRange(location: 0, length: attributedString.length - 1))
            attributedText = attributedString
        }
    }
}

//Keyboard Handling...
extension ViewController {
    func setKeyboardNotificationObserver(){
        NotificationCenter.default.addObserver(self,selector: #selector(self.keyboardWasShown(notification:)),name: UIResponder.keyboardWillChangeFrameNotification,object: nil)
        NotificationCenter.default.addObserver(self,selector: #selector(self.keyboardWillHide(sender:)),name: UIResponder.keyboardWillHideNotification,object: nil)
    }
    @objc func keyboardWasShown(notification: NSNotification) {
        let info = notification.userInfo!
        let keyboardFrame: CGRect = (info[UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        UIView.transition(with: msgTxtView,duration: 1,options: .transitionCrossDissolve,animations: {
            self.txtViewBottomConstraint.constant = (keyboardFrame.size.height)
            //            self.bottomMove()
        },completion: nil)
    }
    @objc func keyboardWillHide(sender: NSNotification) {
        UIView.transition(with: msgTxtView,duration: 0.2,options: .transitionCrossDissolve,animations: {self.txtViewBottomConstraint.constant = 40.0},completion: nil)
    }
}

