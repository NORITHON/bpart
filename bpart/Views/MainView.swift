//
//  MainView.swift
//  bpart
//
//  Created by Alex Cho on 2023/01/27.
//

import SwiftUI

struct MainView: View {
    @State var pageState : String = "RegisterView"

    var body: some View {

        
        
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

                    TabView {
                        HomeView()
                            .environmentObject(FirestoreFundingManager())
                            .tabItem {
                                Label("홈", systemImage: "house.fill")
                            }
                        ResultView().tabItem {
                            Label("결과", systemImage: "doc.text")
                        }
                        NeedsView().tabItem {
                            Label("니즈", systemImage: "message")
                        }
                        
                        MyPageView().tabItem {
                            Label("마이페이지", systemImage: "person")
                        }
                        FundingMapView().tabItem {
                            Label("지도", systemImage: "map")
                        }
                    }
                    
                    
                    
                } //end of else at 26

        
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
