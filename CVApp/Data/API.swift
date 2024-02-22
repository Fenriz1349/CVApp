//
//  API.swift
//  CVApp
//
//  Created by apprenant51 on 31/01/2024.
//

import Foundation
//enum de la liste des erreurs de requetes
enum NetworkError: Error {
    case badUrl
    case invalidRequest
    case badResponse
    case badStatus
    case failedToDecodeResponse
}

//fonction pour requeter une URL et renvoyer la data dans n'importe quel type
// T represente un placerholder de n'importe quel type
class WebService {
    func downloadData<T: Codable>(fromURL: String) async -> T? {
        print("test")
        do {
            guard let url = URL(string: fromURL) else { throw NetworkError.badUrl }
            let (data, response) = try await URLSession.shared.data(from: url)
            guard let response = response as? HTTPURLResponse else { throw NetworkError.badResponse }
            print(response)
            guard response.statusCode >= 200 && response.statusCode < 300 else { throw NetworkError.badStatus }
            guard let decodedResponse = try? JSONDecoder().decode(T.self, from: data) else { throw NetworkError.failedToDecodeResponse }
            
            return decodedResponse
        } catch NetworkError.badUrl {
            print("There was an error creating the URL")
        } catch NetworkError.badResponse {
            print("Did not get a valid response")
        } catch NetworkError.badStatus {
            print("Did not get a 2xx status code from the response")
        } catch NetworkError.failedToDecodeResponse {
            print("Failed to decode response into the given type")
        } catch {
            print("An error occured downloading the data")
        }
        
        return nil
    }
}
//struct du post pour parser la reponse JSON en objet typé swift utilisable
// Identifiable permet de parcourir les struct dans une liste, chaque element est unique graçe à une clé
// Codable permet de wrapper : unwrapper du modele Post vers JSON et inversemment
struct Post: Identifiable, Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
struct User :  Codable {
    let username : String
    let name: String
    let honor : Int
    let clan : String
    let leaderboardPosition :Int
    let skills : [String]
    let ranks : Language
    let languages : [Language]
}
struct Rank : Codable{
    let rank : Int
    let name : String
    let color : String
    let score : Int
  }
struct Language : Codable{
    let name : String
    let rank : Rank
}
struct codeChallenges : Codable {
    let totalAuthored : Int
    let totalCompleted : Int
}
// classe pour créer la liste des posts, @Mainactor indique que code sera excecuté sur le threads principal
//@published indique que la data dpit être mise à jour si il y a un changement coté serveur
// observableObject indique que la view doit être mise à jour si la data change
@MainActor class UserViewModel: ObservableObject {
    @Published var userData = [User]()
    
    func fetchData() async {
        guard let downloadedUser: [User] = await WebService().downloadData(fromURL: "https://www.codewars.com/api/v1/users/Fenriz1349") else {return}
        userData = downloadedUser
    }
}
