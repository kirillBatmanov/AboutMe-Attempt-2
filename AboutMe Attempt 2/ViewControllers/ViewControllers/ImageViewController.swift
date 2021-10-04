//
//  ImageViewController.swift
//  AboutMe Attempt 2
//
//  Created by Кирилл Батманов on 30.09.2021.
//

import UIKit

class ImageViewController: UIViewController {
    
    var user: User!
    
    @IBOutlet var avatarImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        avatarImageView.image = UIImage(named: user.person.image)
    }
    
    override func viewWillLayoutSubviews() {
        avatarImageView.layer.cornerRadius = avatarImageView.frame.height / 2
        
    }
}

