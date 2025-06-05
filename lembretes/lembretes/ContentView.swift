//
//  ContentView.swift
//  lembretes
//
//  Created by iredefbmac_29 on 22/05/25.
//

import SwiftUI

struct ContentView: View {
    @State var lembreteViewModel:LembreteViewModel = LembreteViewModel()
    
    var body: some View {
        NavigationView{
            MainView(lembreteViewModel: $lembreteViewModel)
        }
    }
}

#Preview {
    ContentView()
}
