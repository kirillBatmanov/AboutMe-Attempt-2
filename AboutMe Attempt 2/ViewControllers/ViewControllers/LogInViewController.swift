//
//  ViewController.swift
//  AboutMe Attempt 2
//
//  Created by Кирилл Батманов on 29.09.2021.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = User.getUserData()
    
    //MARK: Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let aboutMe = navigationVC.topViewController as! AboutMeViewController
                aboutMe.user = user
            }
        }
    }
    

    @IBAction func logInButtonPressed(_ sender: Any) {
        if userNameTF.text != user.login || passwordTF.text != user.password {
            showAlert(title: "Invalid login or password", message: "Please, enter correct login and password")
            passwordTF.text = ""
        }
    }
    
    @IBAction func forgotRegister(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops", message: "Your user name is \(user.login)")
        : showAlert(title: "Oops", message: "Your password is \(user.password)")
        
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
}
 
extension LogInViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


