//
//  bpartApp.swift
//  bpart
//
//  Created by Alex Cho on 2023/01/27.
// test by jep!

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
