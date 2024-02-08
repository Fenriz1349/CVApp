//
//  Models.swift
//  CVApp
//
//  Created by apprenant51 on 30/01/2024.
//
import SwiftUI
import Foundation

//struct pour afficher l'écran de presentation
// name : mon nom et prenom
// title : titre du post en cours de formtion
// intro : introduction sur moi
//struct Presentation :Identifiable{
//    let id = UUID()
//    let name : String = "Julien Cotte"
//    var title : String = "Developpeur d'application IOS en formation"
//    var intro : String = "Lillois passionné d'informatique depuis ma jeunesse, je suis actuellement en reconversion pour devenir developpeur d'application iOS, puis concepteur d'application.Decouvrez ici mes projets, les compétences et langages acquis ainsi qu'un apperçu de mon passé professionnel."
//}
//struct des infos d'une formation ou un diplome
// name : nom de la formation
// center : nom du centre de formation
// year : année de validation
//// adress : ville du centre  ( passage à l'adresse complete ?)
//struct Diploma :Identifiable{
//    let id = UUID()
//    let name : String
//    let center : String
//    let year : String
//    let adress : String
//}

//struct d'un emploi
// name : l'intitulé du poste
// compagny : nom de l'entreprise
// dateBeginning : date de début du contrat
// dateEnding : date de fin deu contract
//struct Job :Identifiable{
//    let id = UUID()
//    let name : String
//    let compagny : String
//    let dateBeginning : String
//    let dateEnding : String
//}

//struct d'un skill en programmation
// name : nom du langage
// logo : lien du logo
// certif : lien vers la certification
//struct ITSkill :Identifiable{
//    let id = UUID()
//    let name : String
//    let logo : String
//    let certif : String
//}


//strucs codable pour parser la data en JSON

//struc generale du document JSON, avec la liste des infos 
// french : info en français
// english :en anglais
// compeetences :  liste des competences informatiques
struct DataJSON : Codable, Identifiable {
    var id = UUID()
    let french : InfoDansLaLangue
    let english : InfoDansLaLangue
    let competences : [Competence]
    let informations : Informations
}

//struc des infos dans la langue selectionnée
// titreCompetence : titre de la section competences info
// titreFormation : titre de la section lié au diplomes et formaiton
// titreExperience : titre de la section lié aux emplois
// poste : nom du poste en recherche
// intro : intro au CV
// formations : liste des formations
// experiences : liste des experiences pro
// contact : struct des intitulés de la section contact
struct InfoDansLaLangue : Codable , Identifiable {
    var id = UUID()
    let titreCompetence : String
    let titreFormation : String
    let titreExperience : String
    let poste : String
    let intro : String
    let formations : [Formation]
    let experiences : [Experience]
    let contact : Contact
}

// struct d'un langage info
// nom : nom du langage
// logo : lien url du logo
// lienCertif : lien vers la certif
struct Competence : Codable , Identifiable {
    var id = UUID()
    let nom : String
    let logo : String
    let lienCertif : String
}

//struct du contenu des differents moyen de me contacter
// phone : numero de telephone portable
// adress : ma ville et mon pays
// mail : mon e-mail
// github : lien vers mon github
// codewars : lien vers mon profil codewars
// linkedin : lien vers mon likedin
struct Informations : Codable , Identifiable {
    var id = UUID()
    let telephone : String
    let adresse : String
    let mail : String
    let linkedin : String
    let github : String
}

//struct d'une formation
// nom : nom du diplome ou de la formation
// centre : nom du centre de formation / université
// annee : année d'obtention de la formation
// adresse : ville de la formation
struct Formation : Codable , Identifiable {
    var id = UUID()
    let nom : String
    let centre : String
    let annee : String
    let adresse : String
}

//struct d'un emploi
// name : l'intitulé du poste
// compagny : nom de l'entreprise
// dateDebut : date de début du contrat
// dateFin : date de fin deu contract
struct Experience : Codable , Identifiable {
    var id = UUID()
    let nom : String
    let entreprise : String
    let dateDebut : String
    let dateFin : String
}

// struct des intitulés des contacts dans la langue selectionné
struct Contact :Codable , Identifiable {
    var id = UUID()
    let telephone : String
    let adresse : String
    let mail : String
    let linkedin : String
    let github : String
}

