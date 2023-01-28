//
//  ResultView.swift
//  bpart
//
//  Created by Alex Cho on 2023/01/27.
//

import SwiftUI

struct ResultView: View {
    
    var body: some View {
        let framewidth : CGFloat = 358

        NavigationView{
            ScrollView{
                VStack(alignment: .leading){
                    Image("logo").resizable().frame(width: 60, height: 19.23).padding(EdgeInsets(top: 12, leading: 0, bottom: 0, trailing: 0))
                    Spacer()
                        .frame(height:20.77)
                        Text("여러분들의 따뜻한 후원 덕분에")
                            .font(.customheading1)
                    Spacer()
                        .frame(height:13)
                    
                        Text("이룬 완료프로젝트들 입니다.").font(.customheading1)
                            .frame(width: framewidth)
                            .offset(x:-54, y: 5)
                }

                Image("result1").resizable().frame(width: .infinity, height: 240)
                Image("result2").resizable().frame(width: .infinity, height: 240)
                Image("result3").resizable().frame(width: .infinity, height: 240)
            }.padding(EdgeInsets(top: 0, leading: 21, bottom: 0, trailing: 21))
        }
    }
}
struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
