//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by brubru on 13.09.2021.
//

import SwiftUI
import Combine

class UserManager: ObservableObject {
    @Published var isRegister = false
    
    @AppStorage("isSave") var isSave = false
    @AppStorage("userName") var userName = ""
    
    var name = ""
    
    func saveData() {
        isSave = isRegister
        userName = name
    }
}
