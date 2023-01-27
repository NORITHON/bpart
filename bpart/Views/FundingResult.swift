//
//  FundingResult.swift
//  bpart
//
//  Created by Alex Cho on 2023/01/27.
//

import SwiftUI

struct FundingResult: View {
    var body: some View {
        ScrollView {
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
                Divider()
                Spacer().frame(height:20.77)
                    
            }.padding(12)
        }
            
    }
}

struct FundingResult_Previews: PreviewProvider {
    static var previews: some View {
        FundingResult()
    }
}
