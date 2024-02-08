//
//  ITSkills.swift
//  CVApp
//
//  Created by apprenant51 on 30/01/2024.
//
// écran d'affichage des langages appris et le lien vers les certifs
import SwiftUI

struct ITSkillsScreen: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
//    @Binding var isFrench : Bool
//    var data : InfoDansLaLangue  {
//        return isFrench ? dataCV.french : dataCV.english
//    }
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack{
                Text("Langages")
                    .font(.system(size: 40))
                ScrollView{
                    LazyVGrid(columns: columns){
                        ForEach(dataCV.competences) {element in
                            ExtCompetence(competence:element)}
                    }.font(.system(size: 25))
                }.padding()
                    .foregroundStyle(Color("FontColor"))
            }
            }
            
    }
}

#Preview {
    ITSkillsScreen(/*isFrench: .constant(true)*/)
}
