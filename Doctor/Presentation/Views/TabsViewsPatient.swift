//
//  TabsViewsPatient.swift
//  Doctor
//
//  Created by Elver Mayta Hernández on 23/06/23.
//

import SwiftUI

struct TabsViewsPatient: View {
    init(){
        UITabBar.appearance().backgroundColor = UIColor.black
    }
    
    var body: some View {
        TabView{
            HomeVerPaciente().padding(.top,100)
            .tabItem{
                Image("home")
                Text("Home")
            }.edgesIgnoringSafeArea(.top)
            DocVerPatient()
            .tabItem{
                Image("patients")
                Text("Patients")
            }.edgesIgnoringSafeArea(.top)
            DocCitasPacientes()
            .tabItem{
                Image("cita")
                Text("Citas")
            }.edgesIgnoringSafeArea(.top)
            ChatsDocPatient()
                .tabItem{
                    Image("chats")
                    Text("Chats")
                }.edgesIgnoringSafeArea(.top)
        }
    }
}

struct TabsViewsPatient_Previews: PreviewProvider {
    static var previews: some View {
        TabsViewsPatient()
    }
}
