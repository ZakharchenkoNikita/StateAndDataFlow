//
//  SwiftUIView.swift
//  StateAndDataFlow
//
//  Created by Nikita on 14.09.21.
//

import SwiftUI

struct RegisterTF: View {
    @Binding var name: String
    @Binding var characterСounter: Int
    @Binding var buttonStatus: Bool
    @Binding var counterColor: Color
    
    var body: some View {
        TextField("Enter your name...",
                  text: $name)
            .multilineTextAlignment(.center)
            .onChange(of: name) { value in
                checkTF(valueCount: value.count)
            }
    }
    
    
    private func checkTF(valueCount: Int) {
        if valueCount < 3 {
            buttonStatus = true
            counterColor = .red
        } else if valueCount == 3 {
            buttonStatus.toggle()
            counterColor = .green
        }
        characterСounter = valueCount
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterTF(name: .constant("Test"),
                   characterСounter: .constant(1),
                   buttonStatus: .constant(false),
                   counterColor: .constant(.red))
    }
}
