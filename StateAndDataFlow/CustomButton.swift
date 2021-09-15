//
//  CustomButton.swift
//  StateAndDataFlow
//
//  Created by Nikita on 14.09.21.
//

import SwiftUI

struct CustomButton: View {
    
    var action: () -> Void
    var text: String
    var color: Color
    
    var body: some View {
        Button(action: action) {
            Text("\(text)")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(color)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 4)
        )
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(action: {}, text: "Test", color: .blue)
    }
}
