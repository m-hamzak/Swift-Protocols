//
//  User.swift
//  Swift-Protocols
//
//  Created by Hamza Khalid on 11/02/2025.
//

import Foundation

// Model representing a User
struct User: Identifiable {
    let id: Int
    let name: String
    let email: String
}

// Protocol defining UserViewModel behavior
protocol UserViewModelProtocol: ObservableObject {
    var users: [User] { get }
    func fetchUsers()
}
