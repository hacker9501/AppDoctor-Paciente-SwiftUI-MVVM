//
//  Citas.swift
//  Doctor
//
//  Created by Elver Mayta Hernández on 20/06/23.
//

import SwiftUI

struct CitasDoc: View {
    var body: some View {
        NavigationStack{
            
                VStack{
                    HStack{
                        HStack{
                            Image("icond")
                            VStack{
                                Text("Dr. Charollette Baker")
                                Text("Physiotherapy").padding(.leading,-50)
                            }
                        }.padding(.leading,-90)
                        
                    }
                    .frame(width: 350,height: 100)
                    .background(.white)
                    .cornerRadius(3)
                    .shadow(radius: 1)
                    Spacer()
                    VStack{
                        Button(action: {
                            
                        }, label: {
                            HStack{
                                Image("solicitarcita")
                                Text("Solicitar una cita")
                                    .frame(width: 300,height: 40)
                                    .background(.black)
                                    .cornerRadius(25)
                                    .foregroundColor(.white)
                                    .padding(.top,10)
                            }
                            
                        })
                    }.padding(.top,-80)
                    
                }.toolbar(){
                    ToolbarItem(placement: .navigationBarLeading){
                        Button(action: {
                            
                        }, label: {
                            Image("atras")
                                .frame(width: 40,height: 40)
                                .background(.white)
                                .cornerRadius(10)
                                .shadow(radius: 2)
                        })
                    }
                    ToolbarItem(placement: .principal){
                        Text("Perfil").font(.system(size: 25))
                            .bold()
                    }
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button(action: {
                            
                        }, label: {
                            Image("icond")
                                .resizable()
                                .frame(width: 60,height: 60)
                                .cornerRadius(10)
                        })
                    }
                }
        }
    }
}

struct Citas_Previews: PreviewProvider {
    static var previews: some View {
        CitasDoc()
    }
}
