//
//  Settings.swift
//  MyRickAndMortyApp
//
//  Created by David Duque Osorio on 5/5/24.
//

import SwiftUI

struct Settings: View {
    
    @State private var darkMode = false
    @State private var showAlertDelete = false
    
    var body: some View {
        VStack {
            Text("Settings")
                
                
            Toggle(isOn: $darkMode) {
                Text("Dark mode")
            }.padding()
            
            
            HStack {
                Text("Delete favorites")
                Spacer()
                Button(action: {
                    showAlertDelete = true
                }, label: {
                    Image(systemName: "eraser.fill")
                        .font(.title)
                        .foregroundStyle(Color.red)
                })
                
                .alert("Alert", isPresented: $showAlertDelete) {
                    
                    
                    Button("Cancel", role: .destructive) {
                        
                    }
                }
            }.padding()
                        
            
                
//                    .alert(Alert(title: Text("Alert"),
//                                 message: Text("Delete all favorites"),
//                                 primaryButton: Alert.Button.default(Text("Ok"), action: print("Se han borrado los favoridos")),
//                                 secondaryButton: Alert.Button.destructive(Text("Cancel"), action: print("Se ha cancelado")))),
//                isPresented: $showAlertDelete,
//                actions: <#T##() -> View#>)
                
            
        HStack {
            Text("Application version:")
            Spacer()
            Text("Version 1.0.0")
        }.padding()
                
                
            
           
            
            
        
            }
        .background(Image("backSettings").opacity(0.5))
        
            
          
          
                        
                
                
                
        }
    }


#Preview {
    Settings()
}
