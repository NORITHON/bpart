//
//  OnboardingView.swift
//  bpart
//
//  Created by 채정영 on 1/27/23.
//

import SwiftUI
struct OnboardingView: View {
    
    @Binding var pageState : String
    
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
    
    var body: some View {
        consent
    }
    
    var consent: some View {
        
        return NavigationStack {
            VStack(alignment:.leading) {
                Button(action: {
                    pageState = "RegisterView"
                }, label: {
                    Image(systemName: "chevron.backward")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 15)
                        .padding(20)
                })
                Text("서비스 이용 동의")
                    .font(.customheading0)
                    .padding(EdgeInsets(top: 30, leading: 35, bottom: 20, trailing: 0))
                
                VStack(alignment: .leading){
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
                            Image(systemName: "circle.fill")
                                .resizable()
                                .frame(width: 20, height: 20) :
                            Image(systemName: "circle")
                                .resizable()
                                .frame(width: 20, height: 20)
                        })
                        Text(allConsent)
                            .font(.customheading1)
                        
                    }.padding(EdgeInsets(top: 30, leading: 15, bottom: 20, trailing: 0))
                        .onTapGesture {
                            allConsentListselected = !allConsentListselected
                            
                            if(allConsentListselected){
                                for idx in 0...3 {
                                    consentListSelected[idx] = true
                                }
                            }
                        }
                    
                    // line
                    HStack{
                        Spacer()
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 300, height: 3)
                        Spacer()
                    }
                    
                    VStack{
                        ForEach(0..<consentListSelected.count){ idx in
                            HStack{
                                Button(action: {
                                    consentListSelected[idx] = !consentListSelected[idx]
                                }, label: {
                                    consentListSelected[idx] ?
                                    Image(systemName: "circle.fill")
                                        .resizable()
                                        .frame(width: 20, height: 20):
                                    Image(systemName: "circle")
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                })
                                
                                Text(consentList[idx])
                                Spacer()
                                Image(systemName: "chevron.forward")
                            }.onTapGesture {
                                consentListSelected[idx] = !consentListSelected[idx]
                            }
                            .padding(15)
                        }
                    }
                }.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                Spacer()
                VStack{
                    Text("확인")
                        
                        .frame(width: 350, height : 60)
                        .foregroundColor(areChecked() ? .white: .gray)
                        .font(.customtitle2)
                        .background(areChecked() ? Color(red: 62/255, green: 185/255, blue: 255/255) : Color.white)
                        .cornerRadius(10)
                        .border(areChecked() ? .white: .gray, width: 2)
                        .cornerRadius(10)
                        .onTapGesture{
                            if(areChecked()){
                                self.pageState = "InputNameView"
                            }
                        }
                }.padding(20)
            }
        }
    }


    func areChecked() -> Bool {
        return (consentListSelected[1] && consentListSelected[2])
    }
}


struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(pageState: .constant("OnboardingView"))
    }
}

