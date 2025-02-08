//
//  ActifyApp.swift
//  Actify
//
//  Created by Berke Yılmaz on 8.02.2025.
//

import FirebaseCore
import SwiftUI

@main
struct ActifyApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
