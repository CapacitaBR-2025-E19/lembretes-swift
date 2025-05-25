//
//  CreationView.swift
//  lembretes
//
//  Created by iredefbmac_29 on 25/05/25.
//

import SwiftUI

struct CreationView: View {
    var body: some View {
        // @Binding var lembreteManager:LembreteManager
        
        @State var tempName:String = ""
        @State var tempDesc:String = ""
        @State var tempDate:Date = Date()
        
        
        
        VStack(spacing: 0) {
            // Inicio selecionador de nome
            TextField("Nome", text: $tempName)
                .padding(.horizontal, 20)
                .padding(.vertical, 20)
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .strokeBorder(Color.white1, lineWidth: 2)
                        .frame(height: 50)
                        //.foregroundStyle(Color.gray)
                        .padding(.horizontal, 10)
                )
                .labelsHidden()
            // Fim selecionador de nome
            
            // Inicio selecionador de descrição
            TextField("Descrição", text: $tempName)
                .padding(.horizontal, 20)
                .padding(.vertical, 20)
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .strokeBorder(Color.white1, lineWidth: 2)
                        .frame(height: 50)
                        //.foregroundStyle(Color.gray)
                        .padding(.horizontal, 10)
                )
                .labelsHidden()
            // Fim selecionador de descrição
            
            // Inicio selecionador de data
            DatePicker("Selecionador de Data", selection: $tempDate)
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .strokeBorder(Color.white1, lineWidth: 2)
                        .frame(height: 50)
                        //.foregroundStyle(Color.gray)
                        .padding(.horizontal, 15)
                )
                .labelsHidden()
            // Fim selecionador de data
        }
    }
}

#Preview {
    CreationView()
}
