//
//  Chats.swift
//  Doctor
//
//  Created by Elver Mayta Hernández on 20/06/23.
//

import SwiftUI

struct ChatsDoc: View {
    
    @State var search : String = ""
    
    private var searchresult: [UserDoctor]{
        return UserDoctorList.all()
    }
    var body: some View {
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
            
        }
    }
}

struct Chats_Previews: PreviewProvider {
    static var previews: some View {
        ChatsDoc()
    }
}
