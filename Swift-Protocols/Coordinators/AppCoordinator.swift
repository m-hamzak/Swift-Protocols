//
//  AppCoordinator.swift
//  Swift-Protocols
//
//  Created by Hamza Khalid on 11/02/2025.
//

import UIKit
import SwiftUI

// Coordinator responsible for managing the app's flow
class AppCoordinator {
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let userService = UserService()
        let userViewModel = UserViewModel(service: userService)
        let userView = UserView(viewModel: userViewModel)
        
        window.rootViewController = UIHostingController(rootView: userView)
        window.makeKeyAndVisible()
    }
}
