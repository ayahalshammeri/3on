//
//  MainView.swift
//  3un
//
//  Created by Retaj Al-Otaibi on 04/04/2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
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

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
