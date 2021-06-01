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
    
    @IBOutlet var bottomLogIn: UIButton!
    
    
    let nameUser = "User"
    let namePassword = "Password"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


        
    }

    @IBAction func securitiPassword() {
        //let textActive = "Password"
        inputPasswordPole.isSecureTextEntry = true
                

        
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

    
    @IBAction func clickLogIn() {
        if (inputPasswordPole.text != namePassword || inputUserPole.text != nameUser){
            errorInput()
        }
        
    }
    
    
    private func alertBottomHelp(name: String ) {
        let alertPassword = UIAlertController(title: "Ooops!", message: "Your \(name) is \(name)  😤", preferredStyle: .alert)
        alertPassword.addAction(UIAlertAction(title:"OK", style: .cancel, handler: nil))
        
        self.present(alertPassword, animated: true)
    }
    /*
     Выводим сообщение об ошибки если поля не заполненны корректно
     */
    private func errorInput() {
        let errorAlert = UIAlertController(title: "Invalid login or password", message: "Please, enter correct Login and Password", preferredStyle: .alert)
        errorAlert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        
        self.present(errorAlert, animated: true)
    }
    
    
    
}
