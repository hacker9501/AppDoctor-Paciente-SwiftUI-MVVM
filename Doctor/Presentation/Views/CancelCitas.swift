//
//  CancelCitas.swift
//  Doctor
//
//  Created by Elver Mayta Hernández on 22/06/23.
//

import SwiftUI

struct CancelCitas: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 6){
            Text("Reminder").padding(.leading,10).bold().padding(.top,15)
            Text("Dont forget schedule for upcoming appointment")
                .padding(.leading,10)
                .padding(.top,5)
                .padding(.bottom,15)
            VStack{
                VStack{
                    HStack{
                        VStack{
                            Text("Dr. Charollette Baker").bold().padding(.bottom,10)
                            Text("Physiotherapy").padding(.leading,-60)
                        }
                        Spacer()
                        Image("icond")
                    }.padding()
                    HStack{
                        Image("fecha").padding(.leading,15)
                        Text("Monday, Dec 23").bold()
                        Spacer()
                        Image("hora")
                        Text("12:00-13:00").padding(.trailing,15).bold()
                    }.frame(width: 350,height: 40)
                        .background(Color("azulclaro"))
                        .cornerRadius(3)
                    VStack{
                        Button(action: {
                            
                        }, label: {
                            Text("Cancel")
                            .frame(width: 150,height: 40)
                            .background(.white)
                            .foregroundColor(.black)
                            .border(Color.black,width: 1)
                            .padding(.top,10)
                        })
                    }
                }
                
            }.frame(width: 370,height: 300)
                .background(.white)
                .cornerRadius(35)
                .shadow(radius: 3)
            Spacer()
        }
    }
}

struct CancelCitas_Previews: PreviewProvider {
    static var previews: some View {
        CancelCitas()
    }
}
