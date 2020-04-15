//
//  DataService.swift
//  FanBase
//
//  Created by Alena Khadieva on 15.04.2020.
//  Copyright © 2020 Alena Khadieva. All rights reserved.
//

import Foundation
class DataService {
    static let instance = DataService()
    
    private let films = [
        Film(title: "Rick and Morty", imageName: "Rick and Morty"),
        Film(title: "BoJack Horseman", imageName: "BoJack Horseman"),
        Film(title: "Fargo", imageName: "Fargo"),
        Film(title: "Adventure Time", imageName: "Adventure Time"),
        Film(title: "Friends", imageName: "Friends"),
    ]
    
    func getFilms() -> [Film] {
        return films
    }
    
    private let rickAndMorty = [
        Actor(name: "Rick Sanchez", imageName: "Rick Sanchez"),
        Actor(name: "Morty Smith", imageName: "Morty Smith"),
        Actor(name: "Summer Smith", imageName: "Summer Smith"),
        Actor(name: "Beth Smith", imageName: "Beth Smith"),
        Actor(name: "Jerry Smith", imageName: "Jerry Smith")
    ]
    
    private let boJackHorseMan = [
        Actor(name: "BoJack", imageName: "BoJack"),
        Actor(name: "Diane Nguyen", imageName: "Diane Nguyen"),
        Actor(name: "Todd Chavez", imageName: "Todd Chavez"),
        Actor(name: "Sarah Lynn", imageName: "Sarah Lynn"),
        Actor(name: "Mr. Peanutbutter", imageName: "Mr. Peanutbutter")
    ]
    private let fargo = [
        Actor(name: "Billy Bob Thornton", imageName: "Billy Bob Thornton"),
        Actor(name: "Martin Freeman", imageName: "Martin Freeman"),
        Actor(name: "Mary Elizabeth Winstead", imageName: "Mary Elizabeth Winstead"),
        Actor(name: "Ewan McGregor", imageName: "Ewan McGregor"),
        Actor(name: "Allison Tolman", imageName: "Allison Tolman")
    ]
    private let adventureTime = [
        Actor(name: "Finn Mertens", imageName: "Finn Mertens"),
        Actor(name: "Marceline", imageName: "Marceline"),
        Actor(name: "Jake the Dog", imageName: "Jake the Dog"),
        Actor(name: "Princess Bubblegum", imageName: "Princess Bubblegum"),
        Actor(name: "BMO", imageName: "BMO")
    ]
    private let friends = [
        Actor(name: "Matthew Steven LeBlanc", imageName: "Matthew Steven LeBlanc"),
        Actor(name: "Jennifer Aniston", imageName: "Jennifer Aniston"),
        Actor(name: "David Schwimmer", imageName: "David Schwimmer"),
        Actor(name: "Matthew Langford Perry", imageName: "Matthew Langford Perry"),
        Actor(name: "Lisa Valerie Kudrow-Stern", imageName: "Lisa Valerie Kudrow-Stern")
    ]
    func getActors (forFilmTitle title: String) -> [Actor] {
        switch title {
        case "Rick and Morty":
            return getRickAndMorty()
        case "BoJack Horseman":
            return getBoJackHorseMan()
        case "Fargo":
            return getFargo()
        case "Adventure Time":
            return getAdventureTime()
        case "Friends":
            return getFriends()
        default:
            return getRickAndMorty()
        }
    }
    
    func getRickAndMorty() -> [Actor] {
        return rickAndMorty
    }
    
    func getBoJackHorseMan() -> [Actor] {
        return boJackHorseMan
    }
    
    func getFargo() -> [Actor] {
        return fargo
    }
    
    func getAdventureTime() -> [Actor] {
        return adventureTime
    }
    
    func getFriends() -> [Actor] {
        return friends
    }
}
