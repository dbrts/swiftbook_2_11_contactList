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

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let contact = contactList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = contact.fullName
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let infoVC = segue.destination as? InfoViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        infoVC?.person = contactList[indexPath.row]
    }
}

