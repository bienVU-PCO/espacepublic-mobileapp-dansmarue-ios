//
//  ProfileDetailViewController.swift
//  DansMaRue
//
//  Created by Xavier NOEL on 15/05/2017.
//  Copyright © 2017 VilleDeParis. All rights reserved.
//

import UIKit

class ProfileDetailViewController: UIViewController {
    
    // Mark: - IBOutlet
    @IBOutlet weak var emailLabel: UILabel!
    
    
    // MARK: - View lifecycle
    override func viewDidLoad() {
        emailLabel.text = User.shared.email
    }
    
    // MARK: - IBActions
    @IBAction func displayProfil(_ sender: UIButton) {
        UIApplication.shared.openURL(NSURL(string: Constants.Services.urlDisplayProfile)! as URL)
    }
}
