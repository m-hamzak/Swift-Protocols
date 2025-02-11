//
//  UserViewModel.swift
//  Swift-Protocols
//
//  Created by Hamza Khalid on 11/02/2025.
//

import Foundation

// Protocol defining UserViewModel behavior
protocol UserViewModelProtocol: ObservableObject {
    var users: [User] { get }
    func fetchUsers()
}

// ViewModel responsible for handling user data
class UserViewModel: UserViewModelProtocol {
    private let service: UserServiceProtocol
    @Published var users: [User] = []
    
    init(service: UserServiceProtocol) {
        self.service = service
    }
    
    func fetchUsers() {
        DispatchQueue.global(qos: .userInitiated).async {
            let fetchedUsers = self.service.getUsers()
            DispatchQueue.main.async {
                self.users = fetchedUsers
            }
        }
    }
}
