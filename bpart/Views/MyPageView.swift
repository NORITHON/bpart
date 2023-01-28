//
//  MyPageView.swift
//  bpart
//
//  Created by Alex Cho on 2023/01/27.
//

import SwiftUI

struct MyPageView: View {
    var body: some View {
//        var xOffset : CGFloat = -125
        NavigationView{
            ScrollView{
                VStack(alignment: .leading){
                    Image("logo")
                        .resizable()
                        .frame(width: 60, height: 19.23)
                        .padding(EdgeInsets(top: 12, leading: 0, bottom: 0, trailing: 0))
                        
                    Text("마이페이지").font(.customtitle2).offset(y:10)
                    

                    Image("mypage1").resizable().aspectRatio( contentMode: .fit)
                    
                    Divider()

                    Image("mypage2").resizable().aspectRatio( contentMode: .fit)
                    
                    Divider()

                }
            }.padding(EdgeInsets(top: 0, leading: 21, bottom: 0, trailing: 21))
            
       
        }
    }
}

struct MyPageView_Previews: PreviewProvider {
    static var previews: some View {
        MyPageView()
    }
}
