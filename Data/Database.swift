//
//  Database.swift
//  CVApp
//
//  Created by apprenant51 on 30/01/2024.
//

import Foundation
//frenchEnglishToggle est un boolean qui determine si l'app s'affiche en français ou en anglais, true pour le français, false pour l'anglais
//var frenchEnglishToggle = true



//presentationEn contient le nom, le prenom et la presentation en anglais
//let presentationEn = Presentation(title : "On training IOS App Developer",intro :"From Lille, computer science passionate since my youth, I am currently retraining to become an iOS app developer then an application designer.Discover here my projects, the skills and languages I ​​acquired as well as an overview of my professional past.")

// contactFr contient les contacts en
//Diplomas est la liste de tous les diplomes et formations en français
//let diplomas : [Diploma] = [
//    Diploma(name:"SAS Apple Fondation Program", center :"Simplon", year :"2024", adress:"Lille"),
//    Diploma(name: "MS Data Analyst", center: "Greta", year: "2023", adress: "Lille"),
//    Diploma(name: "La Nurserie Numerique", center: "M2I/AFPA", year: "2023", adress: "Lille"),
//    Diploma(name: "CAP Boucher", center: "Greta", year: "2014", adress: "Lille"),
//    Diploma(name: "DUT STID(Statistique et Traitement Informatique des Données)", center: "Université de Lille 2", year: "2009", adress: "Lille"),
//    Diploma(name: "BAC Scientifique", center: "La Sagesse", year: "2005", adress: "Lambersart")
//]

//Jobs est la liste des tous les emplois en français
//let jobs : [Job] = [
//    Job(name: "Barman", compagny: "Pico Bistro", dateBeginning: "septembre 2020", dateEnding: "decembre 2022"),
//    Job(name: "Brand Promoter", compagny: "Beer Factory", dateBeginning: "janvier 2018", dateEnding: "decembre 2018"),
//    Job(name: "Boucher", compagny: "Carrefour Market", dateBeginning: "mai 2013", dateEnding: "decembre 2017")
//]

//ITSkills est la liste des langages appris, avec le logo et le lien vers la certif
//let iTSkills : [ITSkill] = [
//    ITSkill(name: "Swift/SwiftUI", logo:"https://w7.pngwing.com/pngs/830/800/png-transparent-apple-bird-code-ios-logo-swift-logos-icon-thumbnail.png", certif: ""),
//    ITSkill(name: "Python", logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Python.svg/2048px-Python.svg.png", certif: ""),
//    ITSkill(name: "Javascript", logo: "https://e7.pngegg.com/pngimages/602/440/png-clipart-javascript-open-logo-number-js-angle-text.png", certif: ""),
//    ITSkill(name: "React", logo: "https://c0.klipartz.com/pngpicture/452/495/gratis-png-reaccionar-javascript-angularjs-ionic-github-thumbnail.png", certif: ""),
//    ITSkill(name: "API Rest", logo: "https://toppng.com/uploads/preview/rest-api-icon-rest-api-icon-11553510526uqs2ynyga2.png", certif: ""),
//    ITSkill(name: "Git et Github", logo: "https://w7.pngwing.com/pngs/914/758/png-transparent-github-social-media-computer-icons-logo-android-github-logo-computer-wallpaper-banner-thumbnail.png", certif: ""),
//    ITSkill(name: "SQL", logo: "https://e7.pngegg.com/pngimages/170/924/png-clipart-microsoft-sql-server-microsoft-azure-sql-database-microsoft-text-logo.png", certif: ""),
//    ITSkill(name: "HTML5 et CSS3", logo: "https://cdn-icons-png.flaticon.com/512/732/732212.png", certif: ""),
//    ITSkill(name: "Kotlin", logo: "https://seeklogo.com/images/K/kotlin-logo-6A9E0484CA-seeklogo.com.png", certif: ""),
//    ITSkill(name: "Java", logo: "https://banner2.cleanpng.com/20190623/uxe/kisspng-logo-java-development-kit-portable-network-graphic-5d0f25d6871765.6875406615612738145533.jpg", certif: "")
//]

//dictionnaire des contacts en français
// phone : numero de telephone portable
// adress : ma ville et mon pays
// mail : mon e-mail
// github : lien vers mon github
// codewars : lien vers mon profil codewars
// linkedin : lien vers mon likedin
//let ContactFr : [String:String] = [
//    "telephone":"(33) 06 59 10 21 66",
//    "adresse":"Lille",
//    "mail":"julien.cotte@live.fr",
//    "codewars":"https://www.codewars.com/users/Fenriz1349",
//    "linkedin":"https://www.linkedin.com/in/julien-cotte-7a6141292/",
//    "github":"https://github.com/Fenriz1349"
//]

//dictionnaire des contacts en français
// phone : numero de telephone portable
// adress : ma ville et mon pays
// mail : mon e-mail
// github : lien vers mon github
// codewars : lien vers mon profil codewars
// linkedin : lien vers mon likedin
//let ContactEn : [String:String] = [
//    "phone":"(33) 06 59 10 21 66",
//    "adress":"Lille",
//    "mail":"julien.cotte@live.fr",
//    "codewars":"https://www.codewars.com/users/Fenriz1349",
//    "linkedin":"https://www.linkedin.com/in/julien-cotte-7a6141292/",
//    "github":"https://github.com/Fenriz1349"
//]


//database en JSON
var dataJson = """
{
    "french":
        {"titreCompetence": "Compétences Informatiques",
        "titreFormation": "Formations",
        "titreExperience":"Emplois",
        "poste":"Developpeur d'application IOS Junior",
        "intro":"Lillois passionné d'informatique depuis ma jeunesse, je suis actuellement en reconversion pour devenir developpeur d'application iOS, puis concepteur d'application.Decouvrez ici mes projets, les compétences et langages acquis ainsi qu'un apperçu de mon passé professionnel.",
        "formations":[
            {"nom":"SAS Apple Fondation Program",
            "centre":"Simplon",
            "annee":"2024",
            "adresse":"Lille"
                },
            {"nom":"MS Data Analyst",
            "centre":"Greta",
            "annee":"2023",
            "adresse":"Lille"
            },
            {"nom":"La Nurserie Numerique",
            "centre":"M2I/AFPA",
            "annee":"2023",
            "adresse":"Lille"
            },
            {"nom":"CAP Boucher",
            "centre":"Campus pro",
            "annee":"2014",
            "adresse":""
            },
            {"nom":"DUT STID(Statistique et Traitement Informatique des Données)",
            "centre":"Lille 2",
            "annee":"2009",
            "adresse":"Roubaix"
            },
            {"nom":"BAC Scientifique",
            "centre":"La Sagesse",
            "annee":"2005",
            "adresse":"Lambersart"
            }
        ],
        "experiences":[
            {"nom":"Barman",
            "entreprise":"Pico Bistro",
            "dateDebut":"septembre 2020",
            "dateFin":"decembre 2022"
            },
            {"nom":"Brand Promoter",
            "entreprise":"Beer Factory",
            "dateDebut":"janvier 2018",
            "dateFin":"decembre 2018"
            },
            {"nom":"Boucher",
            "entreprise":"Carrefour Market",
            "dateDebut":"Mai 2013",
            "dateFin":"decembre 2017"
            }
        ],
        "contact":{
            "telephone":"telephone",
            "adresse":"adresse",
            "mail":"e-mail",
            "linkedin":"Linkedin",
            "github":"Github"
        }
        }
    ,
    "english":
        {"titreCompetence" : "IT Skills",
        "titreFormation": "Diplomas",
        "titreExperience":"Jobs",
        "poste":"Junior IOS App Developer",
        "intro":"From Lille, computer science passionate since my youth, I am currently retraining to become an iOS app developer then an application designer.Discover here my projects, the skills and languages I ​​acquired as well as an overview of my professional past.",
        "formations":[
                {"nom":"SAS Apple Fondation Program",
                "centre":"Simplon",
                "annee":"2024",
                "adresse":"Lille"
                },
                {"nom":"MS Data Analyst",
                "centre":"Greta",
                "annee":"2023",
                "adresse":"Lille"
                },
                {"nom":"The Digital Nursery",
                "centre":"M2I/AFPA",
                "annee":"2023",
                "adresse":"Lille"
                },
                {"nom":"NVQ Butcher",
                "centre":"Campus pro",
                "annee":"2014",
                "adresse":""
                },
                {"nom":"DUT STID(Statistics and Computer Data Processing)",
                "centre":"Lille 2",
                "annee":"2009",
                "adresse":"Roubaix"
                },
                {"nom":"High School Diploma Scientific",
                "centre":"La Sagesse",
                "annee":"2005",
                "adresse":"Lambersart"
                }
            ],
        "experiences":[
                {"nom":"Barman",
                "entreprise":"Pico Bistro",
                "dateDebut":"september 2020",
                "dateFin":"december 2022"
                },
                {"nom":"Brand Promoter",
                "entreprise":"Beer Factory",
                "dateDebut":"january 2018",
                "dateFin":"december 2018"
                },
                {"nom":"Butcher",
                "entreprise":"Carrefour Market",
                "dateDebut":"May 2013",
                "dateFin":"december 2017"
                }
            ],
        "contact":{
            "telephone":"phone",
            "adresse":"adress",
            "mail":"mail",
            "linkedin":"Linkedin",
            "github":"Github"
        }
        }
    ,
    "competences":[
        {"nom":"Swift/SwiftUI",
        "logo":"https://w7.pngwing.com/pngs/830/800/png-transparent-apple-bird-code-ios-logo-swift-logos-icon-thumbnail.png",
        "lienCertif":""
        },
        {"nom":"Python",
        "logo":"https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Python.svg/2048px-Python.svg.png",
        "lienCertif":""
        },
        {"nom":"Java",
        "logo":"https://banner2.cleanpng.com/20190623/uxe/kisspng-logo-java-development-kit-portable-network-graphic-5d0f25d6871765.6875406615612738145533.jpg",
        "lienCertif":""
        },
        {"nom":"Kotlin",
        "logo":"https://seeklogo.com/images/K/kotlin-logo-6A9E0484CA-seeklogo.com.png",
        "lienCertif":""
        },
        {"nom":"SQL",
        "logo":"https://e7.pngegg.com/pngimages/170/924/png-clipart-microsoft-sql-server-microsoft-azure-sql-database-microsoft-text-logo.png",
        "lienCertif":""
        },
        {"nom":"HTML5 et CSS3",
        "logo":"https://cdn-icons-png.flaticon.com/512/732/732212.png",
        "lienCertif":""
        },
        {"nom":"Javascript",
        "logo":"https://e7.pngegg.com/pngimages/602/440/png-clipart-javascript-open-logo-number-js-angle-text.png",
        "lienCertif":""
        },
        {"nom":"React",
        "logo":"https://c0.klipartz.com/pngpicture/452/495/gratis-png-reaccionar-javascript-angularjs-ionic-github-thumbnail.png",
        "lienCertif":""
        },
        {"nom":"API Rest",
        "logo": "https://toppng.com/uploads/preview/rest-api-icon-rest-api-icon-11553510526uqs2ynyga2.png",
        "lienCertif":""
        },
        {"nom":"Git et Github",
        "logo":"https://w7.pngwing.com/pngs/914/758/png-transparent-github-social-media-computer-icons-logo-android-github-logo-computer-wallpaper-banner-thumbnail.png",
        "lienCertif":""
        },
        {"nom":"Power Bi",
        "logo":"https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/New_Power_BI_Logo.svg/1200px-New_Power_BI_Logo.svg.png",
        "lienCertif":""
        }
    ],
    "informations":{
        "telephone":"(33) 06 59 10 21 66",
        "adresse":"Lille",
        "mail":"julien.cotte@live.fr",
        "linkedin":"https://www.linkedin.com/in/julien-cotte-7a6141292/",
        "github":"https://github.com/Fenriz1349"
        }
}
"""
//extraction du JSON au format String vers l'objet dataCV
let dataCV = try! JSONDecoder().decode(DataJSON.self, from: dataJson.data(using: .utf8)!)

