//
//  FundingResult.swift
//  bpart
//
//  Created by Alex Cho on 2023/01/27.
//

import SwiftUI

struct FundingResult: View {
    var body: some View {
        ScrollView (){
            VStack(alignment:.leading){
                Image("logo").resizable().frame(width: 60, height: 19.23).padding(EdgeInsets(top: 12, leading: 0, bottom: 0, trailing: 0))
                Spacer()
                    .frame(height:20.77)
                Text("2023년, 비파트를 통해,").font(.customheading1)
                Spacer()
                    .frame(height:13)
                Text("당신의 따듯한 후원 덕분에").font(.customheading1)
                    .frame(height:13)
                Text("오늘 3개의 학교가 세워졌어요.").font(.customheading1)
                Spacer().frame(height:20.77)
                Divider()
            }.padding(24)
            
            VStack(alignment:.leading){
                Text("후원 기업 현황").font(.customtitle3)
                    .frame(height:13)
                    .padding(3)
                Text("따뜻한 후원을 통해 나눔을 실천하는 기업들이 있어요.").foregroundColor(Color.gray)    .font(.system(size: 14))
                    .frame(height:13)
                Image("result4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    //.frame(width: 200, height: 150)
                Spacer().frame(height:20.77)

                Text("실시간 후원 결과").font(.customtitle3)
                    .frame(height:13)
                    .padding(3)
                Text("총 3274개의 프로젝트 중 1273개의 프로젝트가 완료되었습니다.").foregroundColor(Color.gray)    .font(.system(size: 14))
                    .frame(height:13)
                Image("result5")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                //.frame(width: 300, height: 150)
                
            }.padding(EdgeInsets(top: 0, leading: 24, bottom: 24, trailing: 24))
        }
            
    }
}

struct FundingResult_Previews: PreviewProvider {
    static var previews: some View {
        FundingResult()
    }
}
