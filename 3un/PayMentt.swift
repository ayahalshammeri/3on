//
//  PayMentt.swift
//  3un
//
//  Created by jumana alshameri on 04/04/2022.
//

import SwiftUI

struct PayMentt: View {
    
    @State private var degrees: Double = 0
    @State private var flipped: Bool = false
    @State private var isPresented = false

    @State private var name: String = ""
    @State private var expires: String = ""
    @State private var cvv: String = ""
    @State private var number: String = ""

    var body: some View {
        
        ZStack{
            
            
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
            Button {
                isPresented = true
            } label: {
                Text("ادفع").padding().background(Color.appColor).foregroundColor(Color.white).cornerRadius(50, antialiased: false)
            }.alert("تم التبرّع!", isPresented: $isPresented) {
                Button("الغاء") { }
            }

                    }
                }
            
        }
    
  
}


struct PayMentt_Previews: PreviewProvider {
    static var previews: some View {
        PayMentt()
    }
}
