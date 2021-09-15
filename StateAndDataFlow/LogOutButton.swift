//
//  LogOutButton.swift
//  StateAndDataFlow
//
//  Created by Nikita on 14.09.21.
//

import SwiftUI

struct LogOutButton: View {
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        CustomButton(action: logOut,
                     text: "Log Out",
                     color: .blue)
    }
    
    private func logOut() {
        user.isRegister.toggle()
        user.isSave.toggle()
    }
}

struct LogOutButton_Previews: PreviewProvider {
    static var previews: some View {
        LogOutButton()
    }
}
