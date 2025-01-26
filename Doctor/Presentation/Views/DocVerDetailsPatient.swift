//
//  DocVerDetailsPatient.swift
//  Doctor
//
//  Created by Elver Mayta Hernández on 22/06/23.
//

import SwiftUI

struct DocVerDetailsPatient: View {
    var body: some View {
        NavigationStack{
            VStack{
                VStack{
                    HStack{
                        Image("gloria")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 120,height: 130)
                            .padding(.leading,-120)
                        Button(action: {
                            
                        }, label: {
                            Image("chat")
                                .frame(width: 50,height: 50)
                                .background(.white)
                                .cornerRadius(50)
                                .shadow(radius: 5)
                                .padding(.top,-40)
                                .padding(.leading,30)
                        })
                    }
                    VStack{
                        Text("Name: Gloria Borger").padding(.leading,-165)
                        Text("email: gloria@gmail.com").padding(.leading,-140)
                    }
                }.padding(.top,30)
                    
                Spacer()
            }.toolbar(){
                ToolbarItem(placement: .navigationBarLeading){
                    Button(action: {
                        
                    }, label: {
                        Image("back")
                            .frame(width: 40,height: 40)
                    })
                }
                ToolbarItem(placement: .navigationBarLeading){
                    Text("Detalles de los Pacientes").foregroundColor(.white)
                }
                ToolbarItem(placement: .navigationBarLeading){
                    Button(action: {
                        
                    }, label: {
                        Image("bell")
                    })
                    
                }
                ToolbarItem(placement: .navigationBarLeading){
                    Button(action: {
                        
                    }, label: {
                        Image("options")
                    })
                    
                }
            }
            .toolbarBackground(.black, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
        }
        
    }
}

struct DocVerDetailsPatient_Previews: PreviewProvider {
    static var previews: some View {
        DocVerDetailsPatient()
    }
}
