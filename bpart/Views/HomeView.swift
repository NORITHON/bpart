//
//  HomeView.swift
//  bpart
//
//  Created by Alex Cho on 2023/01/27.
//

import SwiftUI
import Firebase

struct HomeView: View {
//    @EnvironmentObject var firestoreFundingManager: FirestoreFundingManager
//    @State private var showPopUp = false
    init(){
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading){
                    HStack{
                        Text("LOGO").font(.customtitle1)
                        Spacer()
                        Image(systemName: "person")
                    }
                    Spacer()
                    Text("비파트님,\n당신의 따듯한 후원 덕분에\n오늘 3개의 학교가 세워졌어요.").font(.custom("PretendardVariable", size: 20)).fontWeight(.bold)
                    HStack{
                        //ICONS
                    }
                    //list of CARDS
                    ZStack{
                        Image("sample")
                        RoundedRectangle(cornerRadius: 12)
                            .frame(width: 350,height: 310)
                            .foregroundColor(.black.opacity(0.05))
                    }
                    
                }.padding()
            }
                
        }
//        NavigationView {
//            List(firestoreFundingManager.fundings, id: \.self){ funding in
//
//                HStack{
//                    Text("\(funding.title)").font(.customtitle1)
//                    Text("\(funding.currentAmount)").font(.customtitle2)
//                    Text("\(funding.targetAmount)").font(.customtitle3)
//                }.onTapGesture {
//                    //navigate to detail
//                }
//
//            }.navigationTitle("Fundings")
//                .navigationBarItems(trailing: Button(action: {
//                    //add dogs
////                    showPopUp.toggle()
//                }, label: {
////                    Image(systemName: "plus")
//                }))
////                .sheet(isPresented: $showPopUp) {
////                    //pop up
////                }
//        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject((FirestoreFundingManager()))
    }
}
