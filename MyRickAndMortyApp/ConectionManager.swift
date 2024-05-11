//
//  ConectionManager.swift
//  MyRickAndMortyApp
//
//  Created by David Duque Osorio on 7/5/24.
//

import Foundation

class ConectionManager {
    
    func getCharacters(completion: @escaping([CharactersModel]) -> ()) {
        guard let url = URL(string: "https://rickandmortyapi.com/api/character") else { fatalError("No se a podido acceder a la URL") }
        
        URLSession.shared.dataTask(with: url) { datos, respuesta, error in
            
            guard let data = datos, error == nil, let response = respuesta as? HTTPURLResponse else { return }
            
            if response.statusCode == 200 {
                //SERIALIZAMOS LOS DATOS QUE TENGAMOS
                do {
                    let characters = try JSONDecoder().decode([CharactersModel].self, from: data)
                    completion(characters)
                } catch let error {
                    print("Ha ocurrido un error: \(error.localizedDescription)")
                }
            }
            
        }.resume()
    }
}
