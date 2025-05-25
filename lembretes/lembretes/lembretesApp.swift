//
//  lembretesApp.swift
//  lembretes
//
//  Created by iredefbmac_29 on 22/05/25.
//

import SwiftUI

@main
struct lembretesApp: App {
    @State var lembreteManager:LembreteManager = LembreteManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
