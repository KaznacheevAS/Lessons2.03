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
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if touches.first != nil {
            view.endEditing(true)
        }
        super .touchesBegan(touches, with: event)
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
        let alertPassword = UIAlertController(title: "Ooops!", message: "Your \(name) is \(name)  😤", preferredStyle: .alert)
        alertPassword.addAction(UIAlertAction(title:"OK", style: .cancel, handler: nil))
        
        self.present(alertPassword, animated: true)
    }
}
