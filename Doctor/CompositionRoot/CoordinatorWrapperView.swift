//
//  CoordinatorWrapperView.swift
//  Doctor
//
//  Created by Elver Mayta Hernández on 26/01/25.
//

import SwiftUI

struct CoordinatorWrapperView: UIViewControllerRepresentable {
    let coordinator = DoctorCoordinatorImp(navigation: UINavigationController())
    
    func makeUIViewController(context: Context) -> UINavigationController {
        coordinator.start()
        return coordinator.navigation
    }
    
    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
        
    }
}
