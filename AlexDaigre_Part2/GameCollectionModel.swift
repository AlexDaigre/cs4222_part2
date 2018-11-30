//
//  dataModel.swift
//  AlexDaigre_Part2
//
//  Created by Alexander Daigre on 11/30/18.
//  Copyright © 2018 Alexander Daigre. All rights reserved.
//

enum Condition {
    case newSIB
    case likeNew
    case good
    case fair
    case poor
    case terrible
}

enum Completeness {
    case cib
    case gameAndManual
    case boxAndManual
    case boxAndGame
    case jewelCaseGameAndInserts
    case cartrigeDiskOnly
    case manualOnly
    case boxOnly
}

struct Game {
    let name: String
    let system: String
    let condition: Condition
    let completeness: Completeness
    let notes: String
    
    init(name: String, system: String, condition: Condition, completeness: Completeness, notes: String = "") {
        self.name = name
        self.system = system
        self.condition = condition
        self.completeness = completeness
        self.notes = notes
    }
}

var games: [Game] = [
    Game(name: "Zone Of The Enders", system: "Playstation 2", condition: Condition.good, completeness: Completeness.cib),
    Game(name: "Zone Of the Enders: The 2nd Runner", system: "Playstation 2", condition: Condition.good, completeness: Completeness.cib),
    Game(name: "Pokemon Snap", system: "Nintendo 64", condition: Condition.good, completeness: Completeness.cartrigeDiskOnly, notes: "Two cartriges owned: similar condition"),
    Game(name: "Pokemon Stadium", system: "Nintendo 64", condition: Condition.good, completeness: Completeness.cartrigeDiskOnly),
    Game(name: "Riven", system: "PC", condition: Condition.fair, completeness: Completeness.cib),
    Game(name: "Myst", system: "PC", condition: Condition.fair, completeness: Completeness.cib),
    Game(name: "Pokemon Yellow", system: "Game Boy Color", condition: Condition.good, completeness: Completeness.cib),
    Game(name: "Pokemon Red", system: "Game Boy", condition: Condition.good, completeness: Completeness.cartrigeDiskOnly),
    Game(name: "Dragon Warrior", system: "Nintendo Entertainment System", condition: Condition.good, completeness: Completeness.gameAndManual, notes: "Own two cartriges, one is in poor condition. It was previously a blockbuster game and was glued shut"),
    Game(name: "Super Mario Brothers / Duck Hunt", system: "Nintendo Entertainment System", condition: Condition.good, completeness: Completeness.cartrigeDiskOnly, notes: "Was bundled with the nes, did not come with its own box.")
]

