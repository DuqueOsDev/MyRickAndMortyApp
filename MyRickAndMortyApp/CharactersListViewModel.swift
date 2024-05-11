//
//  CharactersListViewModel.swift
//  MyRickAndMortyApp
//
//  Created by David Duque Osorio on 8/5/24.
//

import Foundation
import Combine

class CharactersListViewModel: ObservableObject {
    
    init() {
        getCharacters()
    }
    
    var characters = [CharactersModel] () {
        didSet {
            didChange.send(self)
        }
    }
    
    let didChange = PassthroughSubject<CharactersListViewModel, Never>()
    
    func getCharacters() {
        ConectionManager().getCharacters { (characters) in
            //VOY A ASIGNAR LO QUE TRAIGO DE LA CAPA DE CONECCION A UNA PROPIEDAD DE MI VIEWMODEL
            self.characters = characters
        }
    }
}
