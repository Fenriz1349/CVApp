//
//  ContentView.swift
//  CVApp
//
//  Created by apprenant51 on 29/01/2024.
//

import SwiftUI

struct ContentView: View {
//    @State var isFrench : Bool = true
//    var data : InfoDansLaLangue  {
//        return isFrench ? dataCV.french : dataCV.english
//    }
    var body: some View {
//        Toggle(isOn: $isFrench, label: {
//            Text(isFrench ? "français" : "English")
//        })
        TabView {
            ProfilScreen(/*isFrench : $isFrench*/)
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("Profil")
                }
            ITSkillsScreen(/*isFrench : $isFrench*/)
                .tabItem {
                    Image(systemName: "pc")
                    Text("Programmation")
                }
            DiplomasScreen(/*isFrench : $isFrench*/)
                .tabItem {
                    Image(systemName: "scroll.fill")
                    Text("Formations")
                }
            JobsScreen(/*isFrench : $isFrench*/)
                .tabItem {
                    Image(systemName: "signature")
                    Text("Emplois")
                }
        }
    }
}

#Preview {
    ContentView()
}
