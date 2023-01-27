//
//  RegisterView.swift
//  bpart
//
//  Created by 채정영 on 1/27/23.
//

import SwiftUI

struct RegisterView: View {
    
    @Binding var pageState : String
    
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                Spacer()
                Image("logo") // logo
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 10))
                    .offset(x: -40)
                Text("진정한 도움을 위한 부분들을 함께 완성해주세요.")
                    .font(.customheading1)
                    .offset(x: -40)
                Spacer()
            }
            
            VStack(alignment: .center){
                Text("SNS 계정으로 간편 가입하기")
                    .foregroundColor(.gray)
                    .font(.customtitle5)
                
                
                HStack(){
                    Spacer()
                    Image("kakao_logo")
                        .resizable()
                        .frame(width: 60, height: 60)
                    
                    Spacer()
                    
                    Image("naver_logo")
                        .resizable()
                        .frame(width: 60, height: 60)
                    
                    Spacer()
                    
                    Image("google_logo")
                           .resizable()
                           .frame(width: 60, height: 60)
                           .onTapGesture{
                               self.pageState = "OnboardingView"
                           }
                    
//                    NavigationLink(destination: OnboardingView()) {
//                        Text("GO")
//                        Image("google_logo")
//                            .resizable()
//                            .frame(width: 60, height: 60)
//                    }
                    
                    Spacer()
                    
                }.padding(20)
            }.frame(height: 150)
                
        }
    }
}
    

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView(pageState:.constant("RegisterView"))
    }
}
