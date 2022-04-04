//
//  HomeView.swift
//  3un
//
//  Created by jumana alshameri on 04/04/2022.
//

import SwiftUI

struct HomeView: View {
    @State var fatorah = ""
    @State var name = ""
    @State var email = ""
    @State var money = ""
    @State var isShown = false
    var body: some View {
 
            
            ZStack{
                Image("p2").edgesIgnoringSafeArea(.all)
                
                
                VStack{
                    VStack{
                    TextField("ادخل رقم الفاتورة",
                              text: $fatorah)
                    .font(.system(size: 20)).underlineTextField()
                    TextField("اسمك",
                              text: $name)
                    
                    .font(.system(size: 20)).underlineTextField()
                    TextField("بريدك الالكتروني",
                              text: $email)
                    .font(.system(size: 20)).underlineTextField()
                    
                    TextField("ادخل المبلغ المراد التبرّع به",
                              text: $money)
                    .font(.system(size: 20)).underlineTextField()
                    }.padding([.leading,.trailing,.top],40)
                    HStack{
                            Image("btn2")
                            .padding(50).onTapGesture {
                                isShown = true
                            }.sheet(isPresented: $isShown) {
                                PayMentt()
                            }
                      
                        
                    }
                    
                    
                
                }
                
                
            }
            
            
        
        
    }
    
}



struct customViewModifier: ViewModifier {
    var roundedCornes: CGFloat
    var startColor: Color
    var endColor: Color
    var textColor: Color
    
    func body(content: Content) -> some View {
        content
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [startColor, endColor]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(roundedCornes)
            .padding(3)
            .overlay(RoundedRectangle(cornerRadius: roundedCornes)
                        .stroke(LinearGradient(gradient: Gradient(colors: [startColor, endColor]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2))
            .font(.custom("Open Sans", size: 18))
            .foregroundColor(Color.white)
            .shadow(radius: 10)
    }
}

extension View {
    func underlineTextField() -> some View {
        self
            .padding(.vertical, 10)
            .overlay(Rectangle().frame(height: 2).padding(.top, 35))
            .foregroundColor(.appColor)
            .padding(10)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
