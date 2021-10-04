//
//  WelcomeViewController.swift
//  AboutMe Attempt 2
//
//  Created by Кирилл Батманов on 29.09.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user.person.fullName)!"
    }
}
