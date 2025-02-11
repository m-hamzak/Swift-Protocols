//
//  UserList.swift
//  Swift-Protocols
//
//  Created by Hamza Khalid on 11/02/2025.
//


import SwiftUI

// SwiftUI View displaying the list of users
struct UserView: View {
    @StateObject var viewModel: UserViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.users) { user in
                VStack(alignment: .leading) {
                    Text(user.name).font(.headline)
                    Text(user.email).font(.subheadline)
                }
            }
            .navigationTitle("Users")
            .onAppear {
                viewModel.fetchUsers()
            }
        }
    }
}
