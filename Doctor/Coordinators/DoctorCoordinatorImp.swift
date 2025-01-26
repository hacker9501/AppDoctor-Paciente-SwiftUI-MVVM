//
//  DoctorCoordinatorImp.swift
//  Doctor
//
//  Created by Elver Mayta Hernández on 26/01/25.
//

import UIKit

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
        DoctorViewBuilder.create()
    }
    
}
