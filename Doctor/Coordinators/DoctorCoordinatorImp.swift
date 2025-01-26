//
//  DoctorCoordinatorImp.swift
//  Doctor
//
//  Created by Elver Mayta Hernández on 26/01/25.
//

import UIKit
import SwiftUI

protocol DoctorCoordinator {
    var navigation: UINavigationController { get }
    func start()
}

class DoctorCoordinatorImp: DoctorCoordinator {
    var navigation: UINavigationController
    
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
    
    func start() {
        let doctorView = DoctorViewBuilder.create()
        let hostingController = UIHostingController(rootView: doctorView)
        navigation.pushViewController(hostingController, animated: true)
    }
    
}
