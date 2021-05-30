//
//  ViewController.swift
//  Lessons2.03
//
//  Created by Kaznacheev on 30.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var inputUserPole: UITextField!
    @IBOutlet var inputPasswordPole: UITextField!
    
    @IBOutlet var bottomUserNameHelp: UIButton!
    @IBOutlet var bottomPasswordHelp: UIButton!
    
    let nameUser = "User"
    let namePassword = "Password"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let startPole = UIAlertController(title: "Внимание!", message: "Вам нужно заполнить поля:\n User и Password", preferredStyle: .alert)
        startPole.addAction(UIAlertAction(title:"Хорошо", style: .cancel, handler:  nil))
        
        self.present(startPole, animated: true)
        
    }

    @IBAction func securitiPassword() {
        let textActive = "Password"
        inputPasswordPole.isSecureTextEntry = true
        
        
        if (inputPasswordPole.text != textActive){
            activeBottomPasswordHelp()
        }else if (inputPasswordPole.text == nil) {
            activeBottomPasswordHelp()
        }
        
    }
    /*
      Делаем уведомление если нажать на Forgot...
      */
    @IBAction func avtivBottomUserHelp(_ sender: UIButton) {
        alertBottomHelp(name: nameUser)
    }
    
    @IBAction func activeBottomPasswordHelp() {
        alertBottomHelp(name: namePassword)
    }

    private func alertBottomHelp(name: String ) {
        let alertPassword = UIAlertController(title: "Ooops!", message: "Your password is \(name)  😤", preferredStyle: .alert)
        alertPassword.addAction(UIAlertAction(title:"OK", style: .cancel, handler: nil))
        
        self.present(alertPassword, animated: true)
    }
}

