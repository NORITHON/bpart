//
//  FundingDetailView.swift
//  bpart
//
//  Created by Alex Cho on 2023/01/27.
//

import SwiftUI

struct FundingDetailView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                Image("detail").resizable().frame(width: .infinity).aspectRatio( contentMode: .fill)
                
                HStack{
                    VStack{
                        Image(systemName: "heart")
                        Text("19")
                    }
                    Button {
                        //
                    } label: {
                        Rectangle().frame(width: 293, height: 51)
                    }
                    .padding(24)

                }
                
            }
            
            .navigationTitle(Text("상세페이지"))
            
        }
            
    }
}

struct FundingDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FundingDetailView()
    }
}
