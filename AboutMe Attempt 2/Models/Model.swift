//
//  Model.swift
//  AboutMe Attempt 2
//
//  Created by Кирилл Батманов on 29.09.2021.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(login: "Kirill", password: "123", person: Person.getPerson())
    }
}

struct Person {
    let name: String
    let surename: String
    let image: String
    let description: String
    
    var fullName: String {
        "\(name) \(surename)"
    }
    static func getPerson() -> Person {
        Person(name: "Kirill",
               surename: "Batmanov",
               image: "avatar",
               description: "Меня зовут Кирилл, мне 22 года, я пытаюсь научиться разрабатывать мобильные приложения на ios")
    }
}
