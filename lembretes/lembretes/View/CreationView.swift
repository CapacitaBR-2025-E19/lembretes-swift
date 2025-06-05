//
//  CreationView.swift
//  lembretes
//
//  Created by iredefbmac_29 on 25/05/25.
//

import SwiftUI

struct CreationView: View {
    @Binding var lembreteViewModel:LembreteViewModel
    
    @State var tempName:String = String()
    @State var tempDesc:String = String()
    @State var tempDate:Date = Date()
    
    var body: some View {
        VStack(alignment: .trailing) {
            VStack(alignment: .leading, spacing: 0) {
                // Inicio selecionador de nome
                Text("Nome:")
                    .padding(.horizontal, 20)
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
                Text("Descrição:")
                    .padding(.horizontal, 20)
                TextField("Descrição", text: $tempDesc)
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
                Text("Data e Hora:")
                    .padding(.horizontal, 20)
                DatePicker("Selecionador de Data", selection: $tempDate)
                    .padding(.horizontal, 15)
                    .padding(.vertical, 10)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .strokeBorder(Color.white1, lineWidth: 2)
                            .frame(height: 50)
                            //.foregroundStyle(Color.gray)
                            .padding(.horizontal, 10)
                    )
                    .labelsHidden()
                // Fim selecionador de data
            }
            
            // Espaçador Geral
            Spacer()
            
            VStack(alignment: .trailing) {
                // Inicio botão de criação
                Button(
                    action: {
                        lembreteViewModel.createLembrete(name: tempName, description: tempDesc, date: tempDate)
                        
                        print()
                        print()
                        for lembrete in lembreteViewModel.lembretes {
                            print(lembrete)
                        }
                    },
                    label: {
                        ZStack {
                            Circle()
                                .frame(width: 100)
                                .foregroundStyle(Color.white2)
                                .overlay(
                                    Image(systemName: "plus.circle.fill")
                                        .font(.system(size: 85, weight: .medium))
                                        .foregroundStyle(Color.gray)
                                )
                                .padding(.horizontal, 30)
                        }
                    } )
                // Fim do botão de criação
            }
        }
    }
}

#Preview {
    @State @Previewable var lembretething:LembreteViewModel = LembreteViewModel()
    CreationView(lembreteViewModel: $lembretething)
}
