//
//  ExtractedViewList.swift
//  CVApp
//
//  Created by apprenant51 on 07/02/2024.
//

import Foundation
import SwiftUI
//ExtITSkills est une extractview pour generer un composant ITSkill
// skill est un ITSkill
struct ExtCompetence : View {
    let competence : Competence
    var body: some View {
        HStack{
//            AsyncImage(url: URL(string: competence.logo))
//            { image in
//                image.resizable()
//            } placeholder: {
//                ProgressView()
//            }
//            .frame(width: 50, height: 50)
            Text(competence.nom)
        }
        Rectangle()
            .fill(Color("BackgroundColor"))
            .frame(height: 10)
        .font(.system(size: 25))
    }
}

//ExtDiploma est une extractview pour generer un composant Diploma
struct ExtFormation : View {
    let formation : Formation
    var body: some View {
        VStack{
            Text("\(formation.nom) en \(formation.annee)")
            Text("\(formation.centre) à \(formation.adresse)")
            Rectangle()
                .fill(Color("BackgroundColor"))
                .frame(height: 10)
        }
        .font(.system(size: 25))
    }
}


//ExtJob est une extractview pour generer un composant Job
struct ExtExperiene : View {
    let experience : Experience
    var body: some View {
        VStack{
            Text("\(experience.nom) chez \(experience.entreprise)")
            Text("de \(experience.dateDebut) à \(experience.dateFin)")
            Rectangle()
                .fill(Color("BackgroundColor"))
                .frame(height: 10)
        }
        .font(.system(size: 25))
    }
}
