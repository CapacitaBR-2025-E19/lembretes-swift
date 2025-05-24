//
//  lembretemodel.swift
//  lembretes
//
//  created by iredefbmac_29 on 22/05/25.
//

import Foundation

public struct LembreteModel {
    // essenciais
    public var enabled:Bool
    public var date:Int
    public let id:UUID

    // descritivos
    public var name:String
    public var description:String

    // toque & notifs
    // TO-DO

    // inicializador & destrutor
    init(name nameInput: String, name descriptionInput: String, enabled isEnabled: Bool = true, date dateInput: Int) {
        enabled = isEnabled
        date = dateInput
        id = UUID()

        name = nameInput
        description = descriptionInput
    }
}
