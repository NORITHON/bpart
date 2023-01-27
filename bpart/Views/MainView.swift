//
//  MainView.swift
//  bpart
//
//  Created by Alex Cho on 2023/01/27.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomeView()
                .environmentObject(FirestoreFundingManager())
                .tabItem {
                    Label("홈", systemImage: "house")
                }
            MyPageView().tabItem {
                Label("마이페이지", systemImage: "heart")
            }
            FundingMapView().tabItem {
                Label("지도", systemImage: "map")
            }
        }
        
     
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
