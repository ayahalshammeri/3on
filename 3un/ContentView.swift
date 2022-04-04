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
                
                NavigationLink(destination: PayMentt()){
                    //   HomeViewww      DetailView
                    
                    Image("btn1")
                    //البتن ماتنضغط☄️☄️☄️☄️☄️☄️☄️
                    
                }        .offset(y: 250)

                .navigationTitle(Text("ّ"))
            }
            
        }
        
    }
    
}
