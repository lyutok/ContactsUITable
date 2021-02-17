//
//  ContactsViewController.swift
//  ContactsUITable
//
//  Created by Lyudmila Tokar on 2/16/21.
//

import UIKit

class ContactsViewController: UITableViewController {
    
    var personList = Person.getPersonsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 50
        navigationItem.leftBarButtonItem = editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactInfo", for: indexPath)
        
        let person = personList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = "\(person.name) \(person.surname)"
        
        cell.contentConfiguration = content
        return cell
    }
    //shuffle rows
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let currentContact = personList.remove(at: sourceIndexPath.row)
        personList.insert(currentContact, at: destinationIndexPath.row)
    }
    //delete red buttons
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .none
    }
    //delete blank left space
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        false
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let contactDetailsVC = segue.destination as! ContactDetailsViewController
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        let person = personList[indexPath.row]
        
        contactDetailsVC.person = person
    }
}
