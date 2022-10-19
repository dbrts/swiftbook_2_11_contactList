//
//  ViewController.swift
//  swiftbook_2_11_contactList
//
//  Created by dobrets on 19.10.2022.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    private let contactList = Person.getRandomPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(contactList)
    }


}

