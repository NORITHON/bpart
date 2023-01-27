//
//  HomeView.swift
//  bpart
//
//  Created by Alex Cho on 2023/01/27.
//

import SwiftUI

struct HomeView: View {
    //    @EnvironmentObject var firestoreFundingManager: FirestoreFundingManager
    //    @State private var showPopUp = false
    @State var selectedMenuIndex: Int = 0
    
    var menuIcons :[String] =  ["star","graduationcap","humidity","leaf","lock.rectangle.on.rectangle","wonsign.circle"]
    var menuNames : [String] = ["추천","교육","식수시설","보건 및 식량","인권 보호","경제 성장"]
    
    let framewidth : CGFloat = 358
    let frameheight : CGFloat = 277
    
    
//    @State var fundings: [String] = Funding.edu()
    
    init(){
        //calling firebase
    }
    
    var body: some View {
//        NavigationStack {
            ScrollView {
                Spacer().frame(height: 1)
                VStack(alignment: .leading){
                    Image("logo").resizable().frame(width: 60, height: 19.23).padding(EdgeInsets(top: 12, leading: 0, bottom: 0, trailing: 0))
                    
                    Spacer()
                        .frame(height:20.77)
                    Text("비파트님,").font(.customheading1)
                    Spacer()
                        .frame(height:13)
                    Text("당신의 따듯한 후원 덕분에").font(.customheading1)
                        .frame(height:13)
                    Text("오늘 3개의 학교가 세워졌어요.").font(.customheading1)
                    Spacer().frame(height:20.77)
                    NavigationLink {
                        FundingResult().toolbar(.hidden, for: .tabBar)
                    } label: {
                        Text("2023 후원 현황 확인하기")
                            .font(.customhead4)
                            .foregroundColor(.teal)
                            .padding(EdgeInsets(top: 2, leading: 16, bottom: 2, trailing: 16))
                            .overlay(
                                RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color.teal, lineWidth: 1)
                            ).padding(4)
                    }
                    Spacer().frame(height:16)
                    HStack{
                        ForEach(0..<6 ) { idx in
                            Button {
                                selectedMenuIndex = idx
                            } label: {
                                VStack{
                                    Image(systemName: menuIcons[idx])
                                        .foregroundColor(idx == selectedMenuIndex ? .cyan : .gray)
                                        .padding(2)
                                    Text(menuNames[idx]).font(.menuTitle)
                                        .foregroundColor(idx == selectedMenuIndex ? .cyan : .gray)
                                    
                                }
                                .padding(EdgeInsets(top: 0, leading: 7, bottom: 0, trailing: 7))
                            }
                        }
                    }.frame(width: framewidth)
//                    }.frame(width: framewidth)
                    
                }
                switch selectedMenuIndex{
                //suggestive case
                case 0:
                    VStack{
                        NavigationLink(destination: FundingDetailView()) {
                            Image("edu1").resizable().frame(width: framewidth, height: frameheight).toolbar(.hidden, for: .tabBar)
                        }
                        
                        NavigationLink(destination: FundingDetailView()) {
                            Image("edu3").resizable().frame(width: framewidth, height: frameheight).toolbar(.hidden, for: .tabBar)
                        }
                        
                        NavigationLink(destination: FundingDetailView()) {
                            Image("econ1").resizable().frame(width: framewidth, height: frameheight).toolbar(.hidden, for: .tabBar)
                        }
                        
                    }
                case 1:
                    VStack{
                        NavigationLink(destination: FundingDetailView()) {
                            Image("edu1").resizable().frame(width: framewidth, height: frameheight).toolbar(.hidden, for: .tabBar)
                        }
                        NavigationLink(destination: FundingDetailView()) {
                            Image("edu2").resizable().frame(width: framewidth, height: frameheight).toolbar(.hidden, for: .tabBar)
                        }
                        NavigationLink(destination: FundingDetailView()) {
                            Image("edu3").resizable().frame(width: framewidth, height: frameheight).toolbar(.hidden, for: .tabBar)
                        }
                    }
                case 2:
                    VStack{
                        NavigationLink(destination: FundingDetailView()) {
                            Image("water1").resizable().frame(width: framewidth, height: frameheight).toolbar(.hidden, for: .tabBar)
                        }
                        NavigationLink(destination: FundingDetailView()) {
                            Image("water2").resizable().frame(width: framewidth, height: frameheight).toolbar(.hidden, for: .tabBar)
                        }
                        NavigationLink(destination: FundingDetailView()) {
                            Image("water3").resizable().frame(width: framewidth, height: frameheight).toolbar(.hidden, for: .tabBar)
                        }
                    }
                case 3:
                    VStack{
                        NavigationLink(destination: FundingDetailView()) {
                            Image("food1").resizable().frame(width: framewidth, height: frameheight).toolbar(.hidden, for: .tabBar)
                        }
                        NavigationLink(destination: FundingDetailView()) {
                            Image("food2").resizable().frame(width: framewidth, height: frameheight).toolbar(.hidden, for: .tabBar)
                        }
                        NavigationLink(destination: FundingDetailView()) {
                            Image("food3").resizable().frame(width: framewidth, height: frameheight).toolbar(.hidden, for: .tabBar)
                        }
                    }
                case 4:
                    VStack{
                        NavigationLink(destination: FundingDetailView()) {
                            Image("right1").resizable().frame(width: framewidth, height: frameheight).toolbar(.hidden, for: .tabBar)
                        }
                        NavigationLink(destination: FundingDetailView()) {
                            Image("right2").resizable().frame(width: framewidth, height: frameheight).toolbar(.hidden, for: .tabBar)
                        }
                        NavigationLink(destination: FundingDetailView()) {
                            Image("right3").resizable().frame(width: framewidth, height: frameheight).toolbar(.hidden, for: .tabBar)
                        }
                    }
                case 5:
                    VStack{
                        NavigationLink(destination: FundingDetailView()) {
                            Image("econ1").resizable().frame(width: framewidth, height: frameheight).toolbar(.hidden, for: .tabBar)
                        }
                        NavigationLink(destination: FundingDetailView()) {
                            Image("econ2").resizable().frame(width: framewidth, height: frameheight).toolbar(.hidden, for: .tabBar)
                        }
                        NavigationLink(destination: FundingDetailView()) {
                            Image("econ3").resizable().frame(width: framewidth, height: frameheight).toolbar(.hidden, for: .tabBar)
                        }
                    }
                default:
                    Text("NO FUNDS")
                }//end of selectivemenu case
            }
        }
    }
}




struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
//
//struct CardLists: View {
//    @Binding var fundings: [Funding]
//    var body: some View {
//        ForEach(fundings, id: \.self) { funding in
//            //        ForEach(0..<6){ idx in
//            //add selected filtering
//            VStack(alignment: .leading){
//                //imagegraph view
//                ZStack(alignment: .bottomLeading){
//                    Image(funding.media).resizable()
//                        .frame(width: .infinity, height: 178)
//                        .cornerRadius(8)
//
//                    HStack{
//                        VStack{
//                            Text(funding.milestones[0].what).foregroundColor(.white).font(.bargraphLarge)
//                            Text(funding.milestones[0].who).foregroundColor(.white).font(.bargraphSmall)
//
//                            Image(systemName: "checkmark")
////                                .foregroundColor(funding.milestones[0].isDone ? .white : .blue)
//                                .foregroundColor(.white)
//                                .font(.bargraphLarge)
//                                .padding(4)
////                                .background(funding.milestones[0].isDone ? .blue : .cyan)
//                                .background(.white)
//                                .clipShape(Circle())
//
//
//                        }
//                        VStack{
//                            Text(funding.milestones[1].what).foregroundColor(.white).font(.bargraphLarge)
//                            Text(funding.milestones[1].who).foregroundColor(.white).font(.bargraphSmall)
//
//                            Image(systemName: "checkmark")
////                                .foregroundColor(funding.milestones[1].isDone ? .white : .blue)
//                                .foregroundColor(.blue)
//                                .font(.bargraphLarge)
//                                .padding(4)
////                                .background(funding.milestones[1].isDone ? .blue : .cyan)
//                                .background(.cyan)
//                                .clipShape(Circle())
//
//
//                        }
//                        VStack{
//                            Text(funding.milestones[2].what).foregroundColor(.white).font(.bargraphLarge)
//                            Text(funding.milestones[2].who).foregroundColor(.white).font(.bargraphSmall)
//                        }
//
//
//                    }
//
//                }.background(.black.opacity(0.3))
//
//
//                //card
//                HStack {
//                    VStack(alignment: .leading) {
//                        Text(funding.title).font(.title3)
//
//                        Text(funding.description).font(.custombody2)
//                            .foregroundColor(.gray)
//                    }
//                    Spacer()
//                    VStack{
//                        Button {
//                            //                                        funding.isFavorite.toggle()
//
//                        } label: {
//                            Image(systemName: funding.isFavorite ? "heart.fill" : "heart").foregroundColor(.teal)
//                        }
//                        Spacer()
//                        NavigationLink {
//                            FundingDetailView().toolbar(.hidden, for: .tabBar)
//
//
//                        } label: {
//                            Text("함께하기")
//                                .font(.body)
//                                .foregroundColor(.teal)
//                                .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
//                                .overlay(
//                                    RoundedRectangle(cornerRadius: 30)
//                                        .stroke(Color.teal, lineWidth: 2)
//                                )
//                        }.padding(4)
//                    }
//                }
//            }.padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
//        }
//    }
//}


