//
//  OnboardingStartView.swift
//  bpart
//
//  Created by 채정영 on 1/27/23.
//

import SwiftUI
import SwiftUIPager

struct OnboardingStartView : View{
    

    @Binding var pageState : String
    @StateObject var page : Page = .first()
    @State private var pagerIdx : Int = 0
    
    let headerTexts: [String] = [
        "\"우리 지역에 학교는 이미 많은데..\"\n소통과 공유 없이 진행되어\n빛을 보지 못한 수많은 프로젝트",
        "이젠 따로가 아닌 함께 !\n정리된 프로젝트 현황을 보며\n함께 협업하여 목표를 이뤄가요",
        "기업, 단체뿐 아니라 개인도\n꼭 필요한 곳에 후원하여\nSDGs 달성할 수 있어요!"
    ]
    let secondaryTexts: [String] = [
        "SDGs 목표 달성을 위한 수많은 프로젝트가\n정보 공유 없이 각각 흩어져서 진행되어\n중복되거나, 버려진다는 사실을 아셨나요?",
        "BPart는 SDGs의 프로젝트 현황 정보를 모아\n기업과 단체, 개인이 지원 단계별 현황을 보고\n꼭 필요한 후원을 할 수 있게해요!",
        "개인 후원으로 프로젝트에 부분적으로 참여하여\n큰 부담없이도 SDGs의 장기 목표 달성에\n동참하여 보람을 얻을 수 있어요!"
    ]
    
    let pagerImages : [String] = [
        "pager_1",
        "pager_2",
        "pager_3"
    ]
    
    let items : [Int] = Array(0..<3)
    
    var body: some View {
        VStack(alignment: .leading){
            Button(action: {
                pageState = "InputNameView"
            }, label: {
                
                Image(systemName: "chevron.backward")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 15)
                    .padding(20)
            })
            
            Pager(page: page,
                  data: items,
                  id: \.self) { idx in
                    VStack(alignment: .leading) {
                        
                        Text(headerTexts[idx])
                            .font(.customheading1)
                            .padding(EdgeInsets(top: 30, leading: 0, bottom: 0, trailing: 0))
                        
                        Text(secondaryTexts[idx])
                            .font(.customtitle5)
                            .foregroundColor(Color(red: 166/255, green: 166/255, blue: 166/255))
                            .padding(EdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 0))
                        Image(pagerImages[idx])
                            .resizable()
                            .scaledToFit()
                            //.frame()
                        
                        
                    }//.frame(height: 600)
                    .padding(20)
                    
                }
                  .sensitivity(.high)
                  .horizontal(.startToEnd)
                  .onPageChanged({ (newIndex) in
                      pagerIdx = newIndex
                   })
            
            Spacer()
            
            VStack{
                HStack{
                    Spacer()
                    ForEach(0..<3) { idx in
                        //Text("\(idx)")
                        (idx == pagerIdx) ?
                        Capsule()
                            .fill(Color(red: 62/255, green: 185/255, blue: 255/255))
                            .frame(width: 30, height:10):
                        Capsule()
                            .fill(Color(red: 200/255, green: 225/255, blue: 255/255))
                            .frame(width: 10, height:10)
                    }
                    Spacer()
                }
                
                VStack{
                    Text("시작하기")
                }.cornerRadius(10)
                .frame(width: 350, height : 60)
                .foregroundColor(.white)
                .font(.customtitle2)
                .background(Color(red: 62/255, green: 185/255, blue: 255/255))
                .onTapGesture{
                    self.pageState = "HomeView"
                }
                
            }.padding(20)
            
//            Text("시작하기")
//                .frame(width: 350, height : 60)
//                .foregroundColor(.white)
//                .font(.customtitle2)
//                .cornerRadius(10)
//                .background(Color(red: 62/255, green: 185/255, blue: 255/255))
//                .onTapGesture{
//                   self.pageState = "OnboardingPagerView"
//                }
        }
    }
}

struct OnboardingStartView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingStartView(pageState: .constant("OnboardingStartView"))
    }
}
