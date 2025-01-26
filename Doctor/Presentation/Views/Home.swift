//
//  Home.swift
//  Doctor
//
//  Created by Elver Mayta Hernández on 20/06/23.
//

import SwiftUI

struct Home: View {
    
    @State var ingresarpaciente:Bool = false
    @State var ingresardoctor:Bool = false
    
    
    var body: some View {
        VStack{
            HStack{
                Image("camera")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60,height: 60)
                Text("app")
                    .font(.system(size: 40,weight: .bold))
            }
            VStack{
                Image("undraw_doctors_hwty")
                Text("Consult Specialist Dortors")
                    .padding(.bottom,5)
                    .font(.system(size: 27, weight: .bold))
                Text("Securely And Privotely")
                    .font(.system(size: 25, weight: .bold))
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Blandit at velit facilisi massa fringilla cum. Elit feugiat aliquam sed sed arcu eget integer cursus rhoncus. ")
                    .multilineTextAlignment(.center)
                    .padding()
                Button(action: {
                    ingresarpaciente = true
                }, label: {
                    Text("Sign up")
                        .frame(width: 300,height: 40)
                        .background(.black)
                        .cornerRadius(25)
                        .foregroundColor(.white)
                        .padding()
                        
                })
                NavigationLink(destination: RegisterPatient(),isActive: $ingresarpaciente, label: {EmptyView()})
                    .hidden()
                
                HStack{
                    Text("¿Eres doctor?")
                    Button(action: {
                        ingresardoctor = true
                    }, label: {
                        Text("Sign up")
                    })
                    NavigationLink(destination: Registerdoc(),isActive:$ingresardoctor, label: {EmptyView()})
                        .hidden()
                }
                .padding(.bottom,25)
                
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
