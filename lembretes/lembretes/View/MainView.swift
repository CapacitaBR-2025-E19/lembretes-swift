//
//  SwiftUIView.swift
//  lembretes
//
//  Created by iredefbmac_29 on 24/05/25.
//

import SwiftUI

struct MainView: View {
    @Binding var lembreteViewModel:LembreteViewModel
    
    var body: some View {
        
        // Vstack primário
        VStack{
            ForEach(lembreteViewModel.lembretes, id: \.self.id) { lembrete in
                LembreteComponent(lembrete: lembrete)
            }

            // Inicio do link pra view de criação
            NavigationLink(
                destination: CreationView(lembreteViewModel: $lembreteViewModel),
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
    @State @Previewable var lembretething:LembreteViewModel = LembreteViewModel()
    MainView(lembreteViewModel: $lembretething)
}
