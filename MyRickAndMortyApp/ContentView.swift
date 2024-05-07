//
//  ContentView.swift
//  MyRickAndMortyApp
//
//  Created by David Duque Osorio on 4/5/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var indice = 0
    
    var body: some View {
        VStack {
            TabView(selection: $indice,
                    content:  {
                
                Characters().tabItem {
                    Text("Characters")
                    Image(systemName: "person.3.fill")
                }.tag(0)
                
                Episodes().tabItem {
                    Text("Episodes")
                    Image(systemName: "film.stack.fill")
                }.tag(1)
                
                Favorites().tabItem {
                    Text("Favorites")
                    Image(systemName: "star.square.on.square")
                }.tag(2)
                
                Settings().tabItem {
                    Text("Settings")
                    Image(systemName: "wrench.and.screwdriver.fill")
                }.tag(3)
            })
            
        }
        
    }
}

#Preview {
    ContentView()
}
