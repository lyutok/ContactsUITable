//
//  Person.swift
//  ContactsUITable
//
//  Created by Lyudmila Tokar on 2/16/21.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
}

class DataManage {
    let nameArray = ["James",
                     "Josephine",
                     "Art",
                     "Lenna",
                     "Donette",
                     "Simona",
                     "Mitsue",
                     "Leota",
                     "Sage",
                     "Kris"]
    
    let surnameArray = ["Butt",
                        "Darakjy",
                        "Venere",
                        "Paprocki",
                        "Foller",
                        "Morasca",
                        "Tollner",
                        "Dilliard",
                        "Wieser",
                        "Marrier"]
    
    let emailArray = ["jbutt@gmail.com",
                      "josephine_darakjy@darakjy.org",
                      "art@venere.org",
                      "lpaprocki@hotmail.com",
                      "donette.foller@cox.net",
                      "simona@morasca.com",
                      "mitsue_tollner@yahoo.com",
                      "leota@hotmail.com",
                      "sage_wieser@cox.net",
                      "kris@gmail.com"]
    
    let phoneNumberArray = ["504-621-8927",
                            "810-292-9388",
                            "856-636-8749",
                            "907-385-4412",
                            "513-570-1893",
                            "419-503-2484",
                            "773-573-6914",
                            "408-752-3500",
                            "605-414-2147",
                            "410-655-8723"]
    
    func randomValue() -> Person
    {
        let name = nameArray.randomElement() ?? ""
        let surname = surnameArray.randomElement() ?? ""
        let email = emailArray.randomElement() ?? ""
        let phone = phoneNumberArray.randomElement() ?? ""
        
        return Person(name: name, surname: surname, email: email, phoneNumber: phone)
    }
    
}

extension Person {
    
    static func getPersonsList() -> [Person] {
        let userInfo = DataManage()
        
        var personsList: [Person] = []
        
        for _ in 0 ..< userInfo.nameArray.count {
            
            personsList.append(userInfo.randomValue())

        }
        
        return personsList
    }
    
}
