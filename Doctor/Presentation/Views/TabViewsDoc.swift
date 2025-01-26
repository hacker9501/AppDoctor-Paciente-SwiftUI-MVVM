//
//  TabViews.swift
//  Doctor
//
//  Created by Elver Mayta Hernández on 20/06/23.
//

import SwiftUI

struct TabViews: View {
    
    init() {
    UITabBar.appearance().backgroundColor = UIColor.black
    }
    
    var body: some View {
        TabView{
            HomePageDoc().padding(.top,100)
            .tabItem{
                Image("home")
                Text("HOME")
            }.edgesIgnoringSafeArea(.top)
            ChatsDoc()
            .tabItem{
                Image("chats")
                Text("Chats")
            }.edgesIgnoringSafeArea(.top)
            CitasDoc()
            .tabItem{
                Image("cita")
                Text("Citas")
            }.edgesIgnoringSafeArea(.top)
            SearchDoc().padding(.top,100)
            .tabItem{
                Image("search")
                Text("Search")
            }.edgesIgnoringSafeArea(.top)
            ProfileDoc()
            .tabItem{
                Image("perfil")
                Text("Profile")
            }.edgesIgnoringSafeArea(.top)
        }
        .buttonStyle(DefaultButtonStyle())
        .accentColor(.blue)
    }
}

struct TabViews_Previews: PreviewProvider {
    static var previews: some View {
        TabViews()
    }
}
