//
//  InfoViewController.swift
//  swiftbook_2_11_contactList
//
//  Created by dobrets on 19.10.2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var navBar: UINavigationItem!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
        navBar.title = "\(person.fullName)"
    }

}
