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
                        
                                        }
                    
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            Image("rec1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height: 300)
                            // here is the code to copy just paste it everywhere + maybe add an note
                                .onTapGesture {
                                        UIPasteboard.general.string = "5797345"
                                }
                            Image("rec2")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height: 300)
                                .onTapGesture {
                                        UIPasteboard.general.string = "9373947"
                                }
                            
                            Image("rec3")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height: 300)
                                .onTapGesture {
                                        UIPasteboard.general.string = "9373947"
                                }
                            
                            Image("rec4")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height: 300)
                                .onTapGesture {
                                        UIPasteboard.general.string = "9373947"
                                }
                               
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
                                .onTapGesture {
                                        UIPasteboard.general.string = "8727455"
                                }
                               
                            Image("rec6")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height: 300)
                                .onTapGesture {
                                        UIPasteboard.general.string = "71645809"
                                }
                               
                            Image("rec7")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height: 300)
                                .onTapGesture {
                                        UIPasteboard.general.string = "6357214"
                                }
                               
                            Image("rec8")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height: 300)
                                .onTapGesture {
                                        UIPasteboard.general.string = "8769054"
                                }
                               
                        }
                        
                    }
                    
                }
                
            }
            
            
        }
        
    }
    
}

struct DetailViewww_Previews: PreviewProvider {
    static var previews: some View {
        DetailViewww()
    }
}
