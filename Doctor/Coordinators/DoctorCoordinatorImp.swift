//
//  DoctorCoordinatorImp.swift
//  Doctor
//
//  Created by Elver Mayta Hernández on 26/01/25.
//

import UIKit
import SwiftUI

protocol DoctorCoordinator {
    var navigation: UINavigationController { get set }
    func start()
}

class DoctorCoordinatorImp: NSObject, DoctorCoordinator {
    var navigation: UINavigationController
    
    init(navigation: UINavigationController) {
        self.navigation = navigation
        super.init()
    }
    
    func start() {
        let doctorView = Home(coordinator: self)
        let hostingController = UIHostingController(rootView: doctorView)
        navigation.pushViewController(hostingController, animated: true)
    }
    
    func signIn() {
        let signInView = Logindoc()
        let hostingController = UIHostingController(rootView: signInView)
        navigation.pushViewController(hostingController, animated: true)
    }
    
    func signUp() {
        let signUpView = Registerdoc()
        let hostingController = UIHostingController(rootView: signUpView)
        navigation.pushViewController(hostingController, animated: true)
    }

    func tabsPatients() {
        let tabsPatientsView = TabsViewsPatient()
        let hostingController = UIHostingController(rootView: tabsPatientsView)
        navigation.pushViewController(hostingController, animated: true)
    }
}
