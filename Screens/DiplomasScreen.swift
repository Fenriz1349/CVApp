//
//  Diplomas.swift
//  CVApp
//
//  Created by apprenant51 on 30/01/2024.
//
// écran d'affichage des diplomes et formations
import SwiftUI

struct DiplomasScreen: View {
//    @Binding var isFrench : Bool
//    var data : InfoDansLaLangue  {
//        return isFrench ? dataCV.french : dataCV.english
//    }
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack{
                Text("Formations")
                    .font(.system(size: 40))
                ScrollView{
                    ForEach(dataCV.french.formations) {element in
                        ExtFormation(formation :element)
                    }
                }
            }
        }.padding()
            .foregroundStyle(Color("FontColor"))
            .font(.system(size: 20))
    }
}

#Preview {
    DiplomasScreen(/*isFrench: .constant(true)*/)
}
