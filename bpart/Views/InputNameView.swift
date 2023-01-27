//
//  InputNameView.swift
//  bpart
//
//  Created by 채정영 on 1/27/23.
//

import SwiftUI

struct InputNameView : View{
    
    @Binding var pageState : String
    @State var userName: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Button(action: {
                pageState = "OnboardingView"
            }, label: {
                
                Image(systemName: "chevron.backward")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 15)
                    .padding(20)
            })
            Text("BPart에서 사용할\n이름을 입력해주세요.")
                .font(.customheading1)
                .padding(EdgeInsets(top: 30, leading: 20, bottom: 20, trailing: 0))
            
            TextField("이름을 임력해주세요", text: $userName )
                .frame(height: 50)
                .background(Color(red: 252/255, green: 252/255, blue: 252/255))
                .padding(EdgeInsets(top: 30, leading: 20, bottom: 20, trailing: 0))
                
            Spacer()
            VStack{
                Text("확인")
                    .frame(width: 350, height : 60)
                    .foregroundColor(isNameValid() ? .white: .gray)
                    .font(.customtitle2)
                    .cornerRadius(10)
                    .background(isNameValid() ? Color(red: 62/255, green: 185/255, blue: 255/255) : Color.white)
                    .onTapGesture{
                        if(isNameValid()){
                            self.pageState = "OnboardingStartView"
                        }
                    }
            }.padding(20)
        }.padding(20)
    }
    
    func isNameValid() -> Bool {
        return (userName.count >= 3)
    }
}

struct InputNameView_Previews: PreviewProvider {
    static var previews: some View {
        InputNameView(pageState: .constant("InputNameView"))
    }
}
