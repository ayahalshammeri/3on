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
    var body: some View {
        NavigationView{
            
            ZStack{
                Image("p3")
                    .ignoresSafeArea()
                
                //مشكلة الصورة☄️☄️☄️☄️☄️☄️☄️☄️☄️
                
                VStack{
                    Form {
                        Section {
                            TextField("ادخل رقم الفاتورة",
                                      text: $fatorah)
                                .font(.system(size: 25))
                                            
                            TextField("اسمك",
                                      text: $name)
                            
                                .font(.system(size: 25))
                            TextField("بريدك الالكتروني",
                                      text: $email)
                                .font(.system(size: 25))

                            TextField("ادخل المبلغ المراد التبرّع به",
                                      text: $money)
                                .font(.system(size: 25))
                            //اصغر حجمه☄️☄️☄️☄️☄️☄️☄️☄️☄️
                            
                            
//                                .frame(width: 20, height: 15, alignment: .center)

                        
                            
                        }
                        
                    }
                    
                    
                        NavigationLink(destination: PayMentt()){
                            Image("btn2")
                    .padding(50)
                        }
                        .navigationTitle(Text("ّ"))
                    }
                    
                    
                    
                    ////////////////////////////
                    //                            Button(action: {
                    //
                    //                        }, label: {
                    //                         Text("الدفع!")
                    //                                .font(.system(size: 30))
                    //                            //اخليه بس تكست☄️☄️☄️☄️☄️☄️☄️☄️☄️
                    //                                .frame(width: 70, height: 50, alignment: .center)
                    //                                .background(Color(red: 234, green: 178, blue: 76))
                    //                                .foregroundColor(.yellow)
                    //                                  .cornerRadius(15)
                    
                    //                        })
                }
                
                
            }
            
            
        }
        
    }
    








struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
