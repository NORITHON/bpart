//
//  ContentView.swift
//  bpart
//
//  Created by Alex Cho on 2023/01/27.
// last!

import SwiftUI




struct ContentView: View {
    
  
    @State var pageState : String = "RegisterView"
    
    var body: some View {

        MainView()
        
 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


