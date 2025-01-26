//
//  HomeVerPaciente.swift
//  Doctor
//
//  Created by Elver Mayta Hernández on 22/06/23.
//

import SwiftUI

struct HomeVerPaciente: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            VStack{
                Image("doc")
                Text("Hola,\nDr. Alexander!").padding(.leading,40)
            }
            VStack{
                Text("Citas de Hoy").padding(.top,90)
                    .padding(.leading,-170)
                    .bold()
                ScrollView(.horizontal){
                    HStack{
                        VStack{
                            VStack{
                                Image("monica")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 90,height: 90)
                                    .cornerRadius(50)
                                Text("Natasha Romanoff").padding(.leading,-30)
                                Text("Thyroid Dysfunction")
                                    .background(Color("rosadoc"))
                                    .padding(.leading,-20)
                            }.frame(width: 200,height: 170)
                                .background(.white)
                                .cornerRadius(20)
                                .shadow(radius: 2)
                            VStack{
                                HStack{
                                    Image("horablanco")
                                    Text("11:00 AM")
                                }
                            }.frame(width: 200,height: 40)
                                .background(.black)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .shadow(radius: 2)
                                .padding(.top,-20)
                        }
                        VStack{
                            VStack{
                                Image("monica")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 90,height: 90)
                                    .cornerRadius(50)
                                Text("Natasha Romanoff").padding(.leading,-30)
                                Text("Thyroid Dysfunction")
                                    .background(Color("rosadoc"))
                                    .padding(.leading,-20)
                                    
                            }.frame(width: 200,height: 170)
                                .background(.white)
                                .cornerRadius(20)
                                .shadow(radius: 2)
                            VStack{
                                HStack{
                                    Image("horablanco")
                                    Text("11:00 AM")
                                }
                            }.frame(width: 200,height: 40)
                                .background(.black)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .shadow(radius: 2)
                                .padding(.top,-20)
                        }
                        VStack{
                            VStack{
                                Image("monica")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 90,height: 90)
                                    .cornerRadius(50)
                                Text("Natasha Romanoff").padding(.leading,-30)
                                Text("Thyroid Dysfunction")
                                    .background(Color("rosadoc"))
                                    .padding(.leading,-20)
                            }.frame(width: 200,height: 170)
                                .background(.white)
                                .cornerRadius(20)
                                .shadow(radius: 2)
                            VStack{
                                HStack{
                                    Image("horablanco")
                                    Text("11:00 AM")
                                }
                            }.frame(width: 200,height: 40)
                                .background(.black)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .shadow(radius: 2)
                                .padding(.top,-20)
                        }
                        
                    }.padding()
                    
                }
                Spacer()
            }

            
        }
    }
}

struct HomeVerPaciente_Previews: PreviewProvider {
    static var previews: some View {
        HomeVerPaciente()
    }
}
