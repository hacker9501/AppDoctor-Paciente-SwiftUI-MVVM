//
//  ChatsDocPatient.swift
//  Doctor
//
//  Created by Elver Mayta Hernández on 22/06/23.
//

import SwiftUI

struct ChatsDocPatient: View {
    
    @State var search : String = ""
    
    private var searchresult: [UserDoctor]{
        return UserDoctorList.all()
    }
    
    var body: some View {
        NavigationStack{
            VStack{
                NavigationView(){
                    List(searchresult){UserDoctor in
                        HStack{
                                Image("\(UserDoctor.picture)")
                                Text("\(UserDoctor.name)\n\(UserDoctor.mensage)")
                            Spacer()
                            HStack{
                                VStack{
                                    Image("\(UserDoctor.notification)")
                                    Text("\(UserDoctor.date)")
                                        .font(.system(size: 10))
                                }
                            }
                        }
                        
                    }.searchable(text: $search,prompt: Text("Chats"))

                }.padding(.top,0)
            }.toolbar(){
                ToolbarItem(placement: .navigationBarLeading){
                }
            }
            .toolbarBackground(.black, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            
            
        }
        
    }
}

struct ChatsDocPatient_Previews: PreviewProvider {
    static var previews: some View {
        ChatsDocPatient()
    }
}
