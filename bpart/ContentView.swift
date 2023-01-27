//
//  ContentView.swift
//  bpart
//
//  Created by Alex Cho on 2023/01/27.
//

import SwiftUI




struct ContentView: View {
    
    
    // 0 : RegisterView
    // 1 : OnboardingView
    // 2 : InputNameView
    // 
    @State var pageState : String = "RegisterView"
    
    var body: some View {
        // check if the user is registered
        if pageState == "RegisterView" {
            RegisterView(pageState : self.$pageState)
        } else if pageState == "OnboardingView" {
            OnboardingView(pageState : self.$pageState)
        } else if pageState == "InputNameView" {
            InputNameView(pageState : self.$pageState)
        } else if pageState == "OnboardingStartView" {
            OnboardingStartView(pageState : self.$pageState)
        } else if pageState == "OnboardingPagerView" {
            OnboardingStartView(pageState: self.$pageState)
        } else {
            HomeView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


