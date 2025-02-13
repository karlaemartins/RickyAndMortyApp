//
//  CharacterModel.swift
//  RickyAndMortyApp
//
//  Created by Karla E. Martins Fernandes on 11/01/25.
//

struct CharacterModel: Decodable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let image: String
    
//    enum CodingKeys: String, CodingKey {
//        case id
//        case name
//        case status
//        case species
//    }
}

struct CharactersResponse: Decodable {
    let info: Info
    let results: [CharacterModel]
    
    struct Info: Decodable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
}
