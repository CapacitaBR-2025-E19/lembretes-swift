//
//  SwiftUIView.swift
//  lembretes
//
//  Created by iredefbmac_29 on 25/05/25.
//

import SwiftUI

struct LembreteComponent: View {
    var name:Binding<String>
    var description:Binding<String>
    var date:Binding<Date>
    var isEnabled:Binding<Bool>
    
    var body: some View {
        // TO-DO:
        // Fazer as caixas expandirem junto ao texto, e junto as caixas contidas
        // Me perdoar por qualquer erro brutal, são 2:30 da manhã -Enzo
        
        ZStack(alignment: .top) {
            // Retângulo Primario
            RoundedRectangle(cornerRadius: 25)
                .foregroundStyle(Color.white2)
                .padding(10)
                .frame(minHeight: 200, maxHeight: 200)
            
            VStack(alignment: .leading, spacing: 0) {
                // Top Start
                ZStack(alignment: .trailing) {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(Color.white)
                        .padding([.horizontal, .top], 15)
                        .frame(height: 90)
                    
                    HStack {
                        Spacer()
                            .frame(width: 5)
                        
                        TextField("Título do Lembrete", text: name) // limitar de alguma forma o tamanho desse bixo
                            .font(.system(size: 14, weight: .bold))
                            .foregroundStyle(Color.white2)
                        
                        Spacer()
                            .frame(width: 5)
                        
                        Toggle("Toggle do Lembrete", isOn:isEnabled)
                            .labelsHidden()
                            .toggleStyle(.switch)
                            .padding(.leading, 10)
                    } .padding(.top, 15)
                        .padding(.horizontal, 30)
                }
                // Top End
                
                // Elementos Interativos Inferiores (Data, Toque/Toggles de Notif e Vibração, Descrição)
                // No futuro isso aqui seria bom ser colapsível
                
                HStack(spacing: 0) {
                    // Time Button Start
                    Button(
                        action:{
                        
                        },
                        
                        label:{
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundStyle(Color.white)
                                    .frame(width: 277.5, height: 90)
                                    .padding(.leading, 15)
                                    .padding(.top, 5)
                                Text(date.wrappedValue.formatted())
                                    .font(.system(size: 28, weight: .semibold))
                                    .foregroundStyle(Color.white2)
                                    .padding(.leading, 15)
                                    .padding(.top, 5)
                            }
                        }
                    )
                    // Time Button End

                    // Expand Button Start
                    Button(
                        action:{
                            
                        },
                        label:{
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundStyle(Color.white)
                                    .frame(width: 90, height: 90)
                                    .padding(.leading, 5)
                                    .padding(.trailing, 15)
                                    .padding(.top, 5)
                                    .overlay(
                                        Image(systemName: "arrowshape.down.fill")
                                            .font(.system(size: 45))
                                            .padding(.leading, 5)
                                            .padding(.trailing, 15)
                                            .padding(.top, 5)
                                            .foregroundStyle(Color.white2)
                                    )
                            }
                        }
                    )
                    // Expand Button End
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var nome:String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    @Previewable @State var desc:String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    @Previewable @State var dates:Date = Date()
    @Previewable @State var teste:Bool = true
    
    LembreteComponent(
        name: $nome,
        description: $desc,
        date: $dates,
        isEnabled: $teste)
}
