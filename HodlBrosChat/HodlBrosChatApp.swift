//
//  HodlBrosChatApp.swift
//  HodlBrosChat
//
//  Created by Edward White on 6/20/21.
//

import SwiftUI
import Firebase

@main
struct HodlBrosChatApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
