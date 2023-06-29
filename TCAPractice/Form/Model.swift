//
//  Model.swift
//  TCAPractice
//
//  Created by devdchaudhary on 20/06/23.
//

import Foundation

public struct FormModel: Equatable {
    
    let id = UUID()
    let firstName: String
    let lastName: String
    let age: Int
    let gender: String
    let email: String
    let phNo: String
    
    init(firstName: String, lastName: String, age: Int, gender: String, email: String, phNo: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.gender = gender
        self.email = email
        self.phNo = phNo
    }
    
}
