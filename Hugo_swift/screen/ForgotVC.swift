//
//  ForgotVC.swift
//  Hugo_swift
//
//  Created by admin on 7/1/21.
//

import UIKit

class ForgotVC: UIViewController {
    @IBOutlet weak var noticeEmail: UILabel!
    @IBOutlet weak var heightSuccess: NSLayoutConstraint!
    @IBOutlet weak var heightNote: NSLayoutConstraint!
    @IBOutlet weak var inputEmailContainer: UIView!
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var buttonSendEmail: UIButton!
    @IBOutlet weak var inputEmail: UITextField!
    var email = "phamtuan"
    @IBOutlet weak var pleaseMail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        buttonSendEmail.layer.cornerRadius = 12
        inputEmailContainer.layer.borderWidth = 1
        inputEmailContainer.layer.borderColor = UIColor.lightGray.cgColor
        inputEmailContainer.layer.cornerRadius = 12
        heightSuccess.constant = 0
        noticeEmail.text = "Chúng tôi sẽ gửi link thay đổi mật khẩu vào mail của bạn"
        pleaseMail.text = "Vui lòng nhập Email"
    }
    

    @IBAction func onClickConfirmEmail(_ sender: Any) {
        print("inputEmail.text",inputEmail.text)
        if inputEmail.text == self.email {
            self.heightSuccess.constant = 20
            noticeEmail.text = "Email sẽ được gửi trong ít phút."
            pleaseMail.text = "Vui lòng kiểm tra mail để lấy lại mật khẩu!"
        }else {
            self.heightSuccess.constant = 0
            noticeEmail.text = "Chúng tôi sẽ gửi link thay đổi mật khẩu vào mail của bạn"
            pleaseMail.text = "Vui lòng nhập Email"
        }
    }
}

extension ForgotVC {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(ForgotVC.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        self.inputEmailContainer.layer.borderColor = UIColor.lightGray.cgColor
        view.endEditing(true)
    }
    
    @IBAction func handleInput(_ sender: Any) {
        self.inputEmailContainer.layer.borderColor = UIColor.blue.cgColor
    }
}
