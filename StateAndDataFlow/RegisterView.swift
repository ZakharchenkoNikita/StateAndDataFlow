//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by brubru on 13.09.2021.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var user: UserManager
    
    @State private var name = ""
    @State private var characterСounter = 0
    @State private var buttonStatus = true
    @State private var counterColor: Color = .red
    
    var body: some View {
        VStack {
            HStack {
                RegisterTF(name: $name,
                           characterСounter: $characterСounter,
                           buttonStatus: $buttonStatus,
                           counterColor: $counterColor)
                Text("\(characterСounter)")
                    .foregroundColor(counterColor)
            }
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }
            }
            .disabled(buttonStatus)
        }
        .padding()
    }
    
    private func registerUser() {
        if !name.isEmpty {
            user.name = name
            user.isRegister.toggle()
            user.saveData()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
//            .environmentObject(UserManager())
    }
}
