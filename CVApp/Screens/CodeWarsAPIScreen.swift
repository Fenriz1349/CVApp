//
//  testAPIScreen.swift
//  CVApp
//
//  Created by apprenant51 on 31/01/2024.
//

import SwiftUI

struct CodewarsAPIScreen: View {
    @StateObject var user = UserViewModel()
    var body: some View {
        HStack {
            Text("\(user.userData.description)")
            }
        }
    }

#Preview {
    CodewarsAPIScreen()
}
