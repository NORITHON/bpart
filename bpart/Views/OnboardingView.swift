//
//  OnboardingView.swift
//  bpart
//
//  Created by 채정영 on 1/27/23.
//

import SwiftUI
struct OnboardingView: View {
    
    
    @State private var allConsentListselected = false
    let allConsent = "약관 전체 동의"
    
    @State private var consentListSelected: [Bool] = [false, false, false, false]
    @State private var test = false
    
    let consentList: [String] = [
        "만 14세 이상입니다.",
        "(필수) 서비스 이용약관",
        "(필수) 개인정보 처리방침",
        "(선택) 마케팅 정보 수신정보",
    ]
    
    init(){
    }
    
    var body: some View {
        consent
    }
    
    var consent: some View {
        
        return NavigationView {
            VStack(alignment:.leading) {
                
                HStack{
                    Button(action: {
                        allConsentListselected = !allConsentListselected
                        
                        if(allConsentListselected){
                            
                            for idx in 0...3 {
                                consentListSelected[idx] = true
                            }
                        }
                    }, label: {
                        allConsentListselected ?
                        Image(systemName: "circle.fill") :
                        Image(systemName: "circle")
                    })
                    
                    Text(allConsent)
                    
                }.padding(EdgeInsets(top: 30, leading: 35, bottom: 20, trailing: 0))
                
                // line
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: 300, height: 3)
                    .offset(x: 50)
                
                VStack{
                    VStack{
                        ForEach(0..<consentListSelected.count){ idx in
                            
                            HStack{
                                Button(action: {
                                    consentListSelected[idx] = !consentListSelected[idx]
                                }, label: {
                                    consentListSelected[idx] ?
                                    Image(systemName: "circle.fill") :
                                    Image(systemName: "circle")
                                })
                                
                                Text(consentList[idx])
                                Spacer()
                                Image(systemName: "chevron.forward")
                            }
                            .padding(15)
                        }
                    }
                    Spacer()
                    
                    NavigationLink(destination: InputName()) {
                        Text("확인")
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .padding()
                    }.padding(EdgeInsets(top: 8, leading: 140, bottom: 8, trailing: 140))
                        .foregroundColor(Color.white)
                        .background(Color(red: 46/255, green: 204/255, blue: 113/255))
                        .cornerRadius(10)
                }.padding(20)
            }
            .navigationBarTitle("서비스 이용 동의")
        }
    }
}

struct InputName : View{
    @State var userName: String = ""
    
    var body: some View {
        VStack {
            Text("BPart에서 사용할 이름을 입력해주세요.")
            
            TextField("이름을 임력해주세요", text: $userName ){
                
            }
        }
    }
}



struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

