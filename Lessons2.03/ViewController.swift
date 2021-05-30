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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let startPole = UIAlertController(title: "👀", message: "Вам нужно заполнить поля:\n User и Password", preferredStyle: .alert)
        startPole.addAction(UIAlertAction(title:"Хорошо", style: .cancel, handler:  nil))
        
        self.present(startPole, animated: true)
        
        
        
        
    }

    
    @IBAction func avtivBottomUserHelp(_ sender: UIButton) {
        let alertUser = UIAlertController(title: "Ooops!", message:"Yuar name is User 😤", preferredStyle: .alert)
        
        alertUser.addAction(UIAlertAction(title:"OK", style: .cancel, handler: nil))
        
        self.present(alertUser, animated: true)
    }
    
    @IBAction func activeBottomPasswordHelp() {
        let alertPassword = UIAlertController(title: "Ooops!", message: "Your password is Password  😤", preferredStyle: .alert)
        alertPassword.addAction(UIAlertAction(title:"OK", style: .cancel, handler: nil))
        
        self.present(alertPassword, animated: true)
    }
   

}

