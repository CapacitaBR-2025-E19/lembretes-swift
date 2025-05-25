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
            RoundedRectangle(cornerRadius: 25)
                .padding(20)
                .frame(minHeight: 200, maxHeight: 200)
                .foregroundStyle(Color.gray)
            
            VStack() {
                // Elementos do Topo
                ZStack(alignment: .trailing) {
                    RoundedRectangle(cornerRadius: 25)
                        .padding(25)
                        .frame(height: 90)
                        .foregroundStyle(Color.white)
                    
                    HStack {
                        Spacer()
                            .frame(width: 5)
                        
                        TextField("Título do Lembrete", text: name) // limitar de alguma forma o tamanho desse bixo
                            .font(.system(size: 14))
                        
                        Spacer()
                            .frame(width: 5)
                        
                        Toggle("Toggle do Lembrete", isOn:isEnabled)
                            .labelsHidden()
                            .toggleStyle(.switch)
                    } .padding(30)
                }
                
                // Elementos Interativos Inferiores (Data, Toque/Toggles de Notif e Vibração, Descrição)
                // No futuro isso aqui seria bom ser colapsível
                
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
