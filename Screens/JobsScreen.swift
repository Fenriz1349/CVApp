//
//  Jobs.swift
//  CVApp
//
//  Created by apprenant51 on 30/01/2024.
//
// écran d'affichage des anciens métiers
import SwiftUI

struct JobsScreen: View {

    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack{
                Text("Expériences")
                    .font(.system(size: 40))
                ScrollView{
                    ForEach(dataCV.french.experiences) {element in
                        ExtExperiene(experience: element)
                    }
                }
            }
            }.foregroundStyle(Color("FontColor"))
            .font(.system(size: 20))
    }
}

#Preview {
    JobsScreen()
}
