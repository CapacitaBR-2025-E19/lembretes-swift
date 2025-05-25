//
//  lembretemodel.swift
//  lembretes
//
//  created by iredefbmac_29 on 22/05/25.
//

import Foundation
import SwiftUI

public struct LembreteModel {
    // essenciais
    @State public var isEnabled:Bool
    @State public var date:Date
    public let id:UUID

    // descritivos
    @State public var name:String
    @State public var description:String

    // toque & notifs
    // TO-DO

    // inicializador & destrutor
    init(name nameInput: String, description descriptionInput: String, isEnabled enabled: Bool = true, date dateInput: Date) {
        isEnabled = enabled
        date = dateInput
        id = UUID()

        name = nameInput
        description = descriptionInput
    }
}
