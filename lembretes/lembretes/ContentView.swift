//
//  ContentView.swift
//  lembretes
//
//  Created by iredefbmac_29 on 22/05/25.
//

import SwiftUI

struct ContentView: View {
    @State var lembreteManager:LembreteManager = LembreteManager()
    
    var body: some View {
        NavigationView{
            MainView(lembreteManager: $lembreteManager)
        }
    }
}

#Preview {
    ContentView()
}
