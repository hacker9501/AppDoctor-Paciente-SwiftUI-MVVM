//
//  Home.swift
//  Doctor
//
//  Created by Elver Mayta Hernández on 20/06/23.
//

import SwiftUI

struct Home: View {
    
    var coordinator: DoctorCoordinatorImp
    
    var body: some View {
        VStack{
            HStack{
                CustomImage(imageName: "camera",padding: .init(top: 0, leading: 120, bottom: 0, trailing: 0))
                CustomText(content: "app",fontSize: 40,fontWeight: .bold,textAlignment: .center, padding: .init(top: 0, leading: 0, bottom: 0, trailing: 120), multilineTextAlignment: .center)
            }
            VStack{
                Image("undraw_doctors_hwty")
                CustomText(content: "Consult Specialist Dortors", fontSize: 27, fontWeight: .bold,textAlignment: .center,padding: .init(top: 0, leading: 0, bottom: 5, trailing: 0))
                CustomText(content: "Securely And Privotely", fontSize: 25, fontWeight: .bold, textAlignment: .center)
                CustomText(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Blandit at velit facilisi massa fringilla cum. Elit feugiat aliquam sed sed arcu eget integer cursus rhoncus. ", fontSize: 17, padding: .init(top: 2, leading: 10, bottom: 2, trailing: 6), lineLimit: 4, multilineTextAlignment: .center)
                CustomButton(title: "Sign In", action: {
                    coordinator.signIn()
                })
                
                HStack{
                    CustomText(content: "¿Eres doctor?",textAlignment: .center,padding: .init(top: 0, leading: 100, bottom: 0, trailing: 0), multilineTextAlignment: .center)
                    CustomButton(title: "Sign up", action: {
                        coordinator.signUp()
                    }, backgroundColor: .white, textColor: .blue, width: 60, height: 40,padding: .init(top: 10, leading: 0, bottom: 10, trailing: 110))
                }
                .padding(.bottom,25)
                
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home(coordinator: DoctorCoordinatorImp(navigation: UINavigationController()))
    }
}
