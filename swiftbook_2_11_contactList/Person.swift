//
//  Person.swift
//  swiftbook_2_11_contactList
//
//  Created by dobrets on 19.10.2022.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getRandomPersons(count: Int) -> [Person] {
        var result: [Person] = []
        
        let names = DataStore.getRandomNames(count: count)
        let surnames = DataStore.getRandomSurnames(count: count)
        let emails = DataStore.getRandomEmails(count: count)
        let phones = DataStore.getRandomPhones(count: count)
        
        for i in 0...(count - 1) {
            result.append(
                Person(
                    name: names[i],
                    surname: surnames[i],
                    email: emails[i],
                    phone: phones[i]
                )
            )
        }
        
        return result
    }
}

struct DataStore {
    static let names = [
        "Jacoby",
        "Manuel",
        "Nathanial",
        "Brennen",
        "Josie",
        "Marina",
        "Jocelyn",
        "Armani",
        "Sophie",
        "Xzavier",
        "Serenity",
        "Anika"
    ]
    
    static let surnames = [
        "Deleon",
        "Kramer",
        "Deleon",
        "Stokes",
        "Clements",
        "Levine",
        "Howell",
        "Monroe",
        "Pope",
        "Macias",
        "Stevenson",
        "Colon"
    ]
    
    static let emails = [
        "jmitchell@yahoo.com",
        "trisha.zboncak@hotmail.com",
        "mayer.lavern@yahoo.com",
        "wveum@gmail.com",
        "colt25@hotmail.com",
        "astrid.nader@yahoo.com",
        "jaren.heller@gmail.com",
        "lbashirian@hotmail.com",
        "agulgowski@dare.com",
        "whills@littel.net",
        "hugh.langosh@smith.com",
        "ggraham@hotmail.com"
    ]
    
    static let phones = [
        "(502) 899-4543",
        "(914) 807-0426",
        "(666) 598-0955",
        "(500) 874-2079",
        "(842) 506-5466",
        "(497) 930-1469",
        "(694) 771-7613",
        "(974) 998-3937",
        "(663) 527-1127",
        "(456) 301-7077",
        "(478) 454-6286",
        "(269) 583-8948"
    ]
    
    static func getRandomNames(count: Int) -> [String] {
        var names = self.names
        names.shuffle()
        return Array(names.prefix(count))
    }
    
    static func getRandomSurnames(count: Int) -> [String] {
        var surnames = self.surnames
        surnames.shuffle()
        return Array(surnames.prefix(count))
    }
    
    static func getRandomEmails(count: Int) -> [String] {
        var emails = self.emails
        emails.shuffle()
        return Array(emails.prefix(count))
    }
    
    static func getRandomPhones(count: Int) -> [String] {
        var phones = self.phones
        phones.shuffle()
        return Array(phones.prefix(count))
    }
}
