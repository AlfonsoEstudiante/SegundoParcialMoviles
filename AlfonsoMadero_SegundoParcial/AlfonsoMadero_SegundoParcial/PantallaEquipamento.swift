//
//  PantallaEquipamento.swift
//  AlfonsoMadero_SegundoParcial
//
//  Created by Alfonso Madero on 27/10/25.
//

import SwiftUI

struct PantallaEquipamento: View {
    @State private var nombreHeroe: String = "Link"
    var objetoSeleccionado: String
    
    var body: some View {
        VStack {
            HStack {
                NavigationLink(destination: PantallaObjetos()) {
                    Label("Regresar", systemImage: "arrow.left")
                        .foregroundColor(.yellow)
                        .padding()
                }
                Spacer()
            }
            
            VStack(spacing: 12) {
                TextField("Nombre del héroe", text: $nombreHeroe)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                    .font(.headline)
                
                Image("normal_link")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .shadow(radius: 5)
                
                Text("Favor selecciona una túnica")
                    .foregroundColor(.yellow)
                    .padding(.top)
                
                HStack(spacing: 16) {
                    Button(action: {}) {
                        Image(systemName: "tshirt")
                            .foregroundColor(.green)
                    }
                    Button(action: {}) {
                        Image(systemName: "tshirt")
                            .foregroundColor(.red)
                    }
                    Button(action: {}) {
                        Image(systemName: "tshirt")
                            .foregroundColor(.blue)
                    }
                }
                .font(.system(size: 40))
                .padding(.top, 10)
            }
            
            Spacer()
        }
        .background(Color(red: 0.05, green: 0.1, blue: 0.2))
        .ignoresSafeArea(edges: .bottom)
    }
}


#Preview {
    PantallaEquipamento()
}
