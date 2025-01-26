//
//  RegisterPatient.swift
//  Doctor
//
//  Created by Elver Mayta Hernández on 20/06/23.
//

import SwiftUI

struct RegisterPatient: View {
    
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var recupassword: String = ""
    
    @State private var ingresar: Bool = false
    
    var body: some View {
        ZStack{
            VStack{
                Image("logo")
                    .padding(.bottom,90)
            }
            .frame(width: 400, height: 300)
            .background(.black)
            .padding(.bottom,459)
            
            VStack{
                
                VStack(alignment: .leading, spacing: 6) {
                    VStack{
                        Image("corazon")
                        Text("PATIENT")
                    }
                    .padding()
                    
                    VStack{
                        TextField("Enter full name", text: $name)
                            .frame(width: 330,height: 35)
                            .cornerRadius(1)
                            .border(Color.gray,width: 1)
                            .padding()
                        TextField("Enter email or username", text: $email)
                            .frame(width: 330,height: 35)
                            .cornerRadius(1)
                            .border(Color.gray,width: 1)
                            .padding(.top,8)
                        TextField("Password",text: $password)
                            .frame(width: 330,height: 35)
                            .cornerRadius(1)
                            .border(Color.gray,width: 1)
                            .padding(.top,10)
                        TextField("Confirm your password",text: $recupassword)
                            .frame(width: 330,height: 35)
                            .cornerRadius(1)
                            .border(Color.gray,width: 1)
                            .padding(.top,10)
                        Button(action: {
                            
                        }, label: {
                            Text("Registrarse")
                                .frame(width: 300,height: 40)
                                .background(.black)
                                .cornerRadius(25)
                                .foregroundColor(.white)
                                .padding(.top,10)
                            
                        })
                        
                        HStack{
                            Text("¿Ya tienes una cuenta?")
                            Button(action: {
                                ingresar = true
                            }, label: {
                                Text("Sign in")
                            })
                        }
                        .padding()
                        NavigationLink(destination: LoginPatient(),isActive:$ingresar, label: {EmptyView()})
                            .hidden()
                    }
                    
                }
                .background(.white)
                .cornerRadius(20)
                .shadow(radius: 3)
                .padding(.top,60)
            }
        }
    }
}

struct RegisterPatient_Previews: PreviewProvider {
    static var previews: some View {
        RegisterPatient()
    }
}
