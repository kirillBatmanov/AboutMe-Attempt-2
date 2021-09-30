//
//  AboutMeViewController.swift
//  AboutMe Attempt 2
//
//  Created by Кирилл Батманов on 30.09.2021.
//

import UIKit

class AboutMeViewController: UIViewController {

    var user: User!

    @IBOutlet var aboutMeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.fullName
        aboutMeLabel.text = "\(user.person.description)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let imageVC = segue.destination as? ImageViewController else { return }
                imageVC.user = user
    }
}
