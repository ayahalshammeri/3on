//
//  DetailViewww.swift
//  3un
//
//  Created by jumana alshameri on 04/04/2022.
//

import SwiftUI

struct DetailViewww: View {
    var body: some View {
        NavigationView {
            ZStack{
                
                Image("p2")
                    .ignoresSafeArea()
                
                VStack(spacing: -50) {
                    HStack{
                        Spacer()
                        Image("teser")
                            .offset(x: -50)
                        
                        //اخلي الكلام يبين☄️☄️☄️☄️☄️☄️☄️
                    }
                    
                    //اخليه من اليمين لين اليسار   ☄️☄️☄️☄️☄️☄️
                    
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            Image("rec1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height: 300)
                            Image("rec2")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height: 300)
                            
                            Image("rec3")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height: 300)
                            
                            Image("rec4")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height: 300)
                        }
                        
                    }
                    
                    
                    HStack{
                        Spacer()
                        Image("efraj")
                            .offset(x: -50)
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            
                            
                            Image("rec5")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height: 300)
                            Image("rec6")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height: 300)
                            
                            Image("rec7")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height: 300)
                            
                            Image("rec8")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height: 300)
                            
                        }
                        
                    }
                    
                }
                
            }
            
            
        }
        //تاب بار☄️☄️☄️☄️☄️☄️☄️☄️☄️
        //                    TabView {
        //                        DetailView()
        //                            .tabItem {
        //                                Label("home", systemImage: "house")
        //                            }
        //                        HomeView()
        //                            .tabItem {
        //                                Label("pay", systemImage: "dollarsign.circle.fill")
        //                            }
        //                    }
        
        
        TabView{
            
            DetailViewww()
                .tabItem {
                    Image(systemName: "house")
                    Text("home")
                }
            
            HomeView()
                .tabItem {
                    Image(systemName: "dollarsign.circle.fill")
                    Text("pay")
                }
        }
        
    }
    
}

