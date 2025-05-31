import Foundation

@Observable
public class LembreteViewModel {
    public var lembretes:[LembreteModel] = [LembreteModel]()

    init() {
        // quando a gente fazer persistencia puxar do save de lembretes lá
    }

    func createLembrete(name inName:String, description inDesc:String, isEnabled inStatus:Bool = true, date inDate:Date) {
        let lembreteTemp:LembreteModel = LembreteModel(name: inName, description: inDesc, isEnabled: inStatus, date: inDate)
        
        lembretes.append(lembreteTemp)
    }

    func removeLembrete(targetId uuid:UUID) {
        for i in 1..<lembretes.count {
            if lembretes[i].id == uuid {
                lembretes.remove(at: i)
            }
        }
    }
}
