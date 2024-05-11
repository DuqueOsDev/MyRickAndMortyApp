//
//  Post.swift
//  MyRickAndMortyApp
//
//  Created by David Duque Osorio on 8/5/24.
//

import Foundation

struct CharactersModel: Codable, Hashable, Identifiable {
    var id = UUID()
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    
}
