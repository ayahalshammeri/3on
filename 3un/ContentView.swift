//
//  ContentView.swift
//  3un
//
//  Created by jumana alshameri on 28/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        NavigationView{
            ZStack{
                
                
                Image("p1")
                    .ignoresSafeArea()
                
                NavigationLink(destination: MainView()){
                    //   HomeViewww      DetailView
                    
                    Image("btn1")
                    
                }.offset(y: 250)
                .navigationTitle(Text("ّ"))
            }
            
        }.accentColor(.appColor2)
        
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
