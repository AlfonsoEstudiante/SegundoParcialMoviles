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
                
                HStack{
                    Image("normal_link")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                        .shadow(radius: 5)
                    
                    VStack{
                        Button(action: {}) {
                            Image("blue_tunic")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                                .shadow(radius: 5)
                            }
                        Button(action: {}) {
                            Image("green_tunic")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                                .shadow(radius: 5)
                            }
                        Button(action: {}) {
                            Image("red_tunic")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                                .shadow(radius: 5)
                            }
                    }
                }
                
                Text("Favor selecciona una túnica")
                    .foregroundColor(.yellow)
                    .padding(.top)
            }
            
            Spacer()
        }
        .background(Color.black)
        .ignoresSafeArea(edges: .bottom)
    }
}


#Preview {
    PantallaEquipamento(objetoSeleccionado: "")
}

