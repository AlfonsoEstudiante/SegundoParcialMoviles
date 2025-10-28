//
//  PantallaInicio.swift
//  AlfonsoMadero_SegundoParcial
//
//  Created by Alfonso Madero on 27/10/25.
//

import SwiftUI

struct PantallaInicio: View {
    var body: some View {
        NavigationView{
            VStack {
                ZStack{
                    Image("wallpaper")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                    
                    
                    NavigationLink(destination: PantallaObjetos()){
                        
                        Text("Empezar")}
                    .font(.headline)
                    .foregroundColor(.yellow)
                    .padding(.top, 600)
                    .frame(maxWidth: .infinity)
                    
                }
                
                            
                }
        }
       
        }
    }


#Preview {
    PantallaInicio()
}
