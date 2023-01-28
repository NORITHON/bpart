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
                Image("detail")
                    .resizable()
                    .aspectRatio( contentMode: .fill)
                
                HStack{
                    VStack{
                        Image(systemName: "heart")
                        Text("19")
                    }
                    
                    Button {
                        //
                    } label: {
                        Text("후원하기").font(.customtitle2)
                            .foregroundColor(Color.white)
                            .frame(width: 250, height: 51)
                            .background(Color.blue)
                    }
                    .padding(24)
                    
                }
                
            }.navigationTitle("상세 페이지")
            
        }
        
    }
}

struct FundingDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FundingDetailView()
    }
}
