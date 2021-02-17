//
//  SectionViewController.swift
//  ContactsUITable
//
//  Created by Lyudmila Tokar on 2/17/21.
//

import UIKit

class SectionViewController: UITableViewController {
    
    var personList = Person.getPersonsList()
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return personList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = personList[section]
        return "\(person.name) \(person.surname)"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row % 2 == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "phoneCell", for: indexPath)
            let person = personList[indexPath.row]
            var content = cell.defaultContentConfiguration()
            
            content.text = person.phoneNumber
            cell.contentConfiguration = content
            
            return cell
            
        } else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "emailCell", for: indexPath)
            let person = personList[indexPath.row]
            var content = cell.defaultContentConfiguration()
            
            content.text = person.email
            cell.contentConfiguration = content
            
            return cell
        }
    }
    
}
