//
//  ButtonView.swift
//  StateAndDataFlow
//
//  Created by Nikita on 14.09.21.
//

import SwiftUI

struct StartButton: View {
    @ObservedObject var timer: TimeCounter
    
    var body: some View {
        CustomButton(action: timer.startTimer,
                     text: timer.buttonTitle,
                     color: .red)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButton(timer: TimeCounter())
    }
}
