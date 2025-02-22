//
//  UserService.swift
//  Swift-Protocols
//
//  Created by Hamza Khalid on 11/02/2025.
//



// Protocol for user data fetching
protocol UserServiceProtocol {
    func getUsers() -> [User]
}

// Service responsible for providing user data
class UserService: UserServiceProtocol {
    func getUsers() -> [User] {
        return [User(id: 1, name: "Hamza Khalid", email: "hamza@example.com"),
                User(id: 2, name: "Ahsan Khalid", email: "ahsan@example.com")]
    }
}
