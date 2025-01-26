//
//  HomePage.swift
//  Doctor
//
//  Created by Elver Mayta Hernández on 20/06/23.
//

import SwiftUI

struct HomePageDoc: View {
 
    @State var search : String = ""
    
    var body: some View {
        ScrollView{
            VStack{
                Image("icon")
                    .padding(.trailing,50)
                Text("Hola,\nMaría Elena!")
                    .padding(.bottom,1)
                    .font(.system(size: 25))
                Text("Fisioterapias")
                    .font(.system(size: 25))
                    .padding(.leading)
                    .bold()
            }
            .padding(.trailing,200)
            .padding(.bottom,-10)
            NavigationView(){
                ScrollView(.horizontal){
                    HStack{
                        ZStack{
                            VStack{
                            }
                            .frame(width: 180,height: 140)
                            .background(Color("green"))
                            .cornerRadius(30)
                            .padding(.top,40)
                            .padding(.bottom,-28)
                            VStack{
                                Image("nurse")
                                    .frame(width: 0,height: 0)
                                    .padding(.bottom,39)
                            }
                            VStack{
                                VStack{
                                    Text("Dr.Mosia Gloria")
                                    Text("Sr.Physiotherapy")
                                }
                            }
                            .frame(width: 200,height: 50)
                            .background(.white)
                            .cornerRadius(15)
                            .shadow(radius: 2)
                            .padding(.top,159)
                            .padding(.bottom,1)
                            .padding(.leading,5)
                        }
                        ZStack{
                            VStack{
                            }
                            .frame(width: 180,height: 140)
                            .background(Color("greenopacity"))
                            .cornerRadius(30)
                            .padding(.top,40)
                            .padding(.bottom,-28)
                            VStack{
                                Image("nurse")
                                    .frame(width: 0,height: 0)
                                    .padding(.bottom,39)
                            }
                            VStack{
                                VStack{
                                    Text("Dr.Mosia Gloria")
                                    Text("Sr.Physiotherapy")
                                }
                            }
                            .frame(width: 200,height: 50)
                            .background(.white)
                            .cornerRadius(15)
                            .shadow(radius: 2)
                            .padding(.top,159)
                            .padding(.bottom,1)
                            .padding(.leading,5)
                        }
                    }
                    
                }.padding(EdgeInsets(top: -70, leading: 10, bottom: 30, trailing: 0))
            }.searchable(text: $search, prompt: Text("Search"))
            
            HStack{
                Button(action: {
                    
                }, label: {
                    Text("Online")
                }).frame(width: 130,height: 40)
                    .background(.black)
                    .foregroundColor(.white)
                    .cornerRadius(5)
                    .shadow(radius: 2)
                Button(action: {
                    
                }, label: {
                    Text("Offline")
                }).frame(width: 130,height: 40)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(5)
                    .shadow(radius: 2)
            }.padding(.top,-50)
            HStack{
                Image("doctora")
                Text("Dr. Alexander Poppins\nPhysiotherapy")
                Button(action: {
                    
                }, label: {
                    Image("chat").padding()
                        .background(.white)
                        .cornerRadius(50)
                        .shadow(radius: 4)
                })
            }.padding(.top,20)
            HStack{
                Image("doctora")
                Text("Dr. Alexander Poppins\nPhysiotherapy")
                Button(action: {
                    
                }, label: {
                    Image("chat").padding()
                        .background(.white)
                        .cornerRadius(50)
                        .shadow(radius: 4)
                })
                
            }.padding(.top,20)
            
        }
        
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePageDoc()
    }
}
