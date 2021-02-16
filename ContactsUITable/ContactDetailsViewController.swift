//
//  ContactDetailsViewController.swift
//  ContactsUITable
//
//  Created by Lyudmila Tokar on 2/17/21.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    
    @IBOutlet var phoneLable: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "\(person.name) \(person.surname)"
        
        phoneLable.text = person.phoneNumber
        emailLabel.text = person.email

    }
}
