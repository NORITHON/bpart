//
//  MyPageView.swift
//  bpart
//
//  Created by Alex Cho on 2023/01/27.
//

import SwiftUI

struct MyPageView: View {
    var body: some View {
        NavigationStack {
            Text("MyPage")
                .navigationTitle("MyPage")
        }
    }
}

struct MyPageView_Previews: PreviewProvider {
    static var previews: some View {
        MyPageView()
    }
}
