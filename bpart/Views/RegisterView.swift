//
//  RegisterView.swift
//  bpart
//
//  Created by 채정영 on 1/27/23.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                Spacer()
                Image("sample") // logo
                    .resizable()
                    .frame(width: 180, height: 100)
                Text("진정한 도움을 위한 부분들을 함께 완성해주세요.")
                    .font(.custom("PretendardVariable", size: 20)).fontWeight(.bold)
                Spacer()
            }
            
            VStack(alignment: .center){
                Text("SNS 계정으로 간편 가입하기")
                
                HStack{
                    Image("sample")
                        .resizable()
                        .frame(width: 60)
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                    
                    Image("sample")
                        .resizable()
                        .frame(width: 60)
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                    
                    Button(action : {
                        //OnboardingView()
                    }){
                        Image("sample")
                            .resizable()
                            .frame(width: 60)
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Circle())
                    }
                }
            }.frame(height: 80)
        }
    }
}
    

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
