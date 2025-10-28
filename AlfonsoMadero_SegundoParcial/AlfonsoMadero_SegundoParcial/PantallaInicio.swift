//
//  PantallaInicio.swift
//  AlfonsoMadero_SegundoParcial
//
//  Created by Alfonso Madero on 27/10/25.
//

import SwiftUI

struct PantallaInicio: View {
    var body: some View {
        ZStack {
            Image("wallpaper")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                NavigationLink(destination: PantallaObjetos()) {
                    Text("Empezar")
                        .font(.headline)
                        .foregroundColor(.yellow)
                        .padding(.bottom, 40)
                }
            }
        }
    }
}


#Preview {
    PantallaInicio()
}
