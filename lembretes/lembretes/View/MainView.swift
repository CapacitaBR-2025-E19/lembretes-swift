//
//  SwiftUIView.swift
//  lembretes
//
//  Created by iredefbmac_29 on 24/05/25.
//

import SwiftUI

struct MainView: View {
    @Binding var lembreteManager:LembreteManager
    
    var body: some View {
        
        // Vstack primário
        VStack{
            ForEach(lembreteManager.lembretes, id: \.self.id) { lembrete in
                LembreteComponent(lembrete: lembrete)
            }

            // Inicio do link pra view de criação
            NavigationLink(
                destination: CreationView(lembreteManager: $lembreteManager),
                label: {
                Circle()
                .frame(width: 100)
                .overlay(
                    Image(systemName: "plus.circle.fill")
                    .font(.system(size: 85))
                    .foregroundStyle(Color.gray)
                    )
                }
            ) .foregroundStyle(Color.white2)
            // Fim do link pra view de criação
        }
    }
}

#Preview {
    @State @Previewable var lembretething:LembreteManager = LembreteManager()
    MainView(lembreteManager: $lembretething)
}
