//
//  PantallaObjetos.swift
//  AlfonsoMadero_SegundoParcial
//
//  Created by Alfonso Madero on 27/10/25.
//

import SwiftUI

struct PantallaObjetos: View {
    let objetos = [
        ("bomba", "Bomb"),
        ("flechas", "Arrows"),
        ("mazo", "Hammer"),
        ("boomerang", "Boomerang"),
        ("resortera", "Slingshot"),
        ("espada", "Sword")
    ]
    
    var body: some View {
        VStack(spacing: 16) {
            HStack {
                NavigationLink(destination: PantallaInicio()) {
                    Label("Regresar", systemImage: "arrow.left")
                        .foregroundColor(.yellow)
                        .padding()
                }
                Spacer()
            }
            
            HStack {
                GroupBox{
                    Image("wizard")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Text("It's dangerous to go alone! Take this.")
                        .font(.subheadline)
                        .foregroundColor(.white)
                }
            }
            .padding()
            .background(Color.black)
            .cornerRadius(8)
            
            ScrollView {
                VStack(spacing: 12) {
                    ForEach(objetos, id: \.0) { objeto in
                        NavigationLink(destination: PantallaEquipamento(objetoSeleccionado: objeto.0)) {
                            HStack {
                                Image(objeto.1)
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                Text(objeto.0)
                                    .foregroundColor(.yellow)
                                    .font(.headline)
                                Spacer()
                            }
                            .padding()
                            .background(Color.blue.opacity(0.15))
                            .cornerRadius(8)
                        }
                    }
                }
                .padding()
            }
        }
        .background(Color(red: 0.05, green: 0.1, blue: 0.2))
        .ignoresSafeArea(edges: .bottom)
    }
}


#Preview {
    PantallaObjetos()
}
