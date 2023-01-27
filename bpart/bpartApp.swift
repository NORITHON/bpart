//
//  bpartApp.swift
//  bpart
//
//  Created by Alex Cho on 2023/01/27.
// push to branch

import SwiftUI
import Firebase
@main
struct bpartApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
