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
    
    static func getRandomPersons() -> [Person] {
        var result: [Person] = []
        
        for _ in 1...6 {
            result.append(
                Person(
                    name: DataStore.getRandomName(),
                    surname: DataStore.getRandomSurname(),
                    email: DataStore.getRandomEmail(),
                    phone: DataStore.getRandomPhone()
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
    
    static func getRandomName() -> String {
        names.randomElement() ?? "No name"
    }
    
    static func getRandomSurname() -> String {
        surnames.randomElement() ?? "No surname"
    }
    
    static func getRandomEmail() -> String {
        emails.randomElement() ?? "No email"
    }
    
    static func getRandomPhone() -> String {
        phones.randomElement() ?? "No phone"
    }
}
