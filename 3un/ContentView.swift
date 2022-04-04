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
                
                NavigationLink(destination: HomeView()){
                    //   HomeView      DetailView
                    
                    Image("btn1")
                    //البتن ماتنضغط☄️☄️☄️☄️☄️☄️☄️
                    
                    //   .offset(y: 250)
                }
                .navigationTitle(Text("ّ"))
            }
            
        }
        
    }
    
}

//------------------------------------------------------------p2

struct DetailView: View {
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
        
        
        //            TabView {
        //                DetailView()
        //                    .tabItem {
        //                        Label("home", systemImage: "house")
        //                    }
        //                HomeView()
        //                    .tabItem {
        //                        Label("pay", systemImage: "dollarsign.circle.fill")
        //                    }
        //            }
        
        
        
        
        
        //             TabView{
        //
        //                                            DetailView()
        //                                                .tabItem {
        //                                                    Image(systemName: "house")
        //                                                    Text("home")
        //                                                }
        //
        //                                                    HomeView()
        //                                                .tabItem {
        //                                        Image(systemName: "dollarsign.circle.fill")
        //                                        Text("pay")
        //                                                }
        //                                        }
        
    }
    
}
//}
////////////////////////////////////////////////////////////  p3
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
                    
                    
                    NavigationView{
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
    
}


//////////////////////////////////////////////////////////////////////////////////////////////////////////p4
//struct PayMent: View {
struct PayMentt: View {
    
    @State private var degrees: Double = 0
    @State private var flipped: Bool = false
    @State private var isPresented = false

    @State private var name: String = ""
    @State private var expires: String = ""
    @State private var cvv: String = ""
    @State private var number: String = ""

    var body: some View {
        VStack {
            CreditCard {
                
                VStack {
                 Group {
                        if flipped {
                            CreditCardBack(cvv: cvv)
                        } else {
                            CreditCardFront(name: name, expires: expires, number: number)
                        }
                    }
                }.rotation3DEffect(
                    .degrees(degrees),
                    axis: (x: 0.0, y: 1.0, z: 0.0)
                )
                
            }
            .onTapGesture {
                withAnimation {
                    degrees += 180
                    flipped.toggle()
                }
            }
            TextField("Number", text: $number)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding([.top,.leading,.trailing])
            
            TextField("Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding([.top,.leading,.trailing])
            
            TextField("Expiration", text: $expires)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding([.leading,.trailing])
            
            TextField("CVV", text: $cvv) { (editingChanged) in
                withAnimation {
                    degrees += 180
                    flipped.toggle()
                }
            } onCommit: {}
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding([.leading,.trailing])
            
        }
    
    Spacer()
        Button("ادفع"){
            //اسوي الادت عالبتن☄️☄️☄️☄️☄️☄️☄️☄️☄️

//          .font(.system(size: 25))
//            .font(.title3)
//            .fontWeight(.bold)
//            .foregroundColor(Color.white)

        
            isPresented = true
                }
                .alert("تم التبرّع!", isPresented: $isPresented) {
                    Button("الغاء") { }
                }
            }
        }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//                List(expensesArray, id: \.id){ a in
//                           Image("(a.profileImage)")
//                               .resizable()
//                               .scaledToFit()
//                               .frame(width: 80, height: 80, alignment: .center)

//                       }

