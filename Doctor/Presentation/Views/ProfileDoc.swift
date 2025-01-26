//
//  Profile.swift
//  Doctor
//
//  Created by Elver Mayta Hernández on 20/06/23.
//

import SwiftUI

struct ProfileDoc: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    HStack{
                        Image("icon")
                        Text("María Elena")
                        
                    }
                    .frame(width: 350,height: 100)
                    .background(.white)
                    .cornerRadius(3)
                    .shadow(radius: 1)
                    VStack{
                        HStack{
                            HStack{
                                Image("setting")
                                Text("Setting")
                            }.padding(.leading,15)
                            Spacer()
                            HStack{
                                Button(action: {
                                    
                                }, label: {
                                    Image("next")
                                })
                            }.padding(.trailing,15)
                        }.frame(width: 350,height: 60)
                            .background(.white)
                            .cornerRadius(3)
                            .shadow(radius: 1)
                            .padding()
                        
                    }
                    VStack{
                        VStack(){
                            HStack{
                                Image("cerrarsesion")
                                Text("Log Out")
                            }.padding(.leading,-160)
                        }.frame(width: 350,height: 60)
                            .background(.white)
                            .cornerRadius(3)
                            .shadow(radius: 1)
                            .padding(.top,0)
                        
                    }
                    
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
                            Image("clint")
                                .cornerRadius(10)
                        })
                    }
                }
            }
            
        }
        
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDoc()
    }
}
