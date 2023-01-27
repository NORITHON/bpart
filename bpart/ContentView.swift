//
//  ContentView.swift
//  bpart
//
//  Created by Alex Cho on 2023/01/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MainView()
//        HomeView().environmentObject(FirestoreFundingManager())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
