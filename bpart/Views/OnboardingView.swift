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
                    .font(.customheading1)
                    .padding(EdgeInsets(top: 30, leading: 35, bottom: 20, trailing: 0))
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
                            }
                            .padding(15)
                        }
                    }
                    Spacer()
                    VStack{
                        Text("확인")
                            .frame(width: 350, height : 60)
                            .foregroundColor(areChecked() ? .white: .gray)
                            .font(.customtitle2)
                            .cornerRadius(10)
                            .background(areChecked() ? Color(red: 62/255, green: 185/255, blue: 255/255) : Color.white)
                            .onTapGesture{
                                if(areChecked()){
                                    self.pageState = "InputNameView"
                                }
                            }
//                        : Text("확인")
//                            .frame(width: 350, height : 60)
//                            .foregroundColor(.gray)
//                            .font(.customtitle2)
//                            .background(Color.white)
//                            .border(.gray)
//                            .cornerRadius(10);
                    }.padding(20)
                }
            }
        }
    }
    
    func areChecked() -> Bool {
        return (consentListSelected[1] && consentListSelected[2])
    }
    //    func ConfirmButton() -> View {
    //        if(consentListSelected[1] && consentListSelected[2]) {
    //            return NavigationLink (
    //                destination: InputName()
    //                , label : {
    //                    Text("확인")
    //                        .frame(width: 350, height : 60)
    //                        .foregroundColor(.white)
    //                        .font(.customtitle2)
    //                        .cornerRadius(10)
    //                        .background(Color(red: 62/255, green: 185/255, blue: 255/255))
    //                    }
    //                )
    //            } else {
    //                return Text("확인")
    //                    .frame(width: 350, height : 60)
    //                    .foregroundColor(.gray)
    //                    .font(.customtitle2)
    //                    .background(Color.white)
    //                    .border(.gray)
    //                    .cornerRadius(10);
    //            }
    //        }
    //    }
}



struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(pageState: .constant("OnboardingView"))
    }
}

