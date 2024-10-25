//
//  to_doApp.swift
//  to-do
//
//  Created by Matthew Deng on 2024-10-05.
//

import FirebaseCore
import SwiftUI

@main
struct to_doApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
