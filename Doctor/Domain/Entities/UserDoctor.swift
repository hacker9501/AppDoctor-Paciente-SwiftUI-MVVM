//
//  UserDoctor.swift
//  Doctor
//
//  Created by Elver Mayta Hernández on 22/06/23.
//

import Foundation

struct UserDoctor: Identifiable {
    let id = UUID()
    let name: String
    let mensage:String
    let picture:String
    let date:String
    let notification:String
}

public struct UserDoctorList{
    
    static func all() ->[UserDoctor]{
        return[
            UserDoctor(
                name:"Gloria Borger",
                mensage:"Thank you for the answer!!!",
                picture:"gloria",
                date:"Today, 2:00PM",
                notification:"notifi3"
            ),
            UserDoctor(
                name:"Monica Rambeau",
                mensage:"Already expected this result...",
                picture:"monica",
                date:"Today, 2:00PM",
                notification:""
            ),
            UserDoctor(
                name:"Clint Barton",
                mensage:"I’ll be waiting",
                picture:"clint",
                date:"Today, 2:00PM",
                notification:""
            ),
            UserDoctor(
                name:"Jeremy Renner",
                mensage:"Please check the audio",
                picture:"jeremy",
                date:"Today, 2:00PM",
                notification:"notifi1"
            ),
            UserDoctor(
                name:"Jeremy Renner",
                mensage:"Please check the audio",
                picture:"jeremy",
                date:"Today, 2:00PM",
                notification:""
            ),
            UserDoctor(
                name:"Gloria Borger",
                mensage:"Thank you for the answer!!!",
                picture:"gloria",
                date:"Today, 2:00PM",
                notification:"notifi3"
            ),
            UserDoctor(
                name:"Monica Rambeau",
                mensage:"Already expected this result...",
                picture:"monica",
                date:"Today, 2:00PM",
                notification:""
            ),
            UserDoctor(
                name:"Clint Barton",
                mensage:"I’ll be waiting",
                picture:"clint",
                date:"Today, 2:00PM",
                notification:""
            ),
            UserDoctor(
                name:"Jeremy Renner",
                mensage:"Please check the audio",
                picture:"jeremy",
                date:"Today, 2:00PM",
                notification:"notifi1"
            ),
            UserDoctor(
                name:"Jeremy Renner",
                mensage:"Please check the audio",
                picture:"jeremy",
                date:"Today, 2:00PM",
                notification:""
            ),
        ]
    }
}
