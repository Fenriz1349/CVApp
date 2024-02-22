//
//  Profil.swift
//  CVApp
//
//  Created by apprenant51 on 30/01/2024.
//

import SwiftUI

struct ProfilScreen: View {
//    @Binding var isFrench : Bool
//    var data : InfoDansLaLangue  {
//        return isFrench ? dataCV.french : dataCV.english
//    }
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack{
                Text("Julien Cotte")
                    .font(.system(size: 40))
                    .padding(.bottom,30)
                Text(dataCV.french.poste)
                    .font(.system(size: 30))
                    .padding(.bottom,20)
                Text(dataCV.french.intro)
                    .font(.system(size: 20))
            }.multilineTextAlignment(.center)
        }.padding()
            .foregroundStyle(Color("FontColor"))
    }
}

#Preview {
    ProfilScreen(/*isFrench: .constant(true)*/)
}
