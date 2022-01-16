//U-N00B-or-Bot

import Foundation

struct Auto {
    let name: String
    let engine: String
    
    var photo: String {"\(name) - \(engine)"}
}

extension Auto {
    static func getAutoList() -> [Auto] {
        var teas: [Auto] = []
    
        

        for index in 0..<Data.shared.name.count {
            let tea = Auto(name: Data.shared.name[index], engine: Data.shared.desc[index])
            
            teas.append(tea)
        }
        
        
        
        
        
        
        /* [Auto(name: "Мини Точа Гунтин Гун То", engine: "Шу Пуэр"),
         Auto(name: "Золотой Биндао", engine: "Шэн Пуэр"),
         Auto(name: "Да Шу Ча Ван «‎Четыре Иероглифа»", engine: "Шу Пуэр"),
         Auto(name: "Мини Точа Гунтин Гун То", engine: "Шу Пуэр"),
          Auto(name: "Золотой Биндао", engine: "Шэн Пуэр"),
          Auto(name: "Да Шу Ча Ван «‎Четыре Иероглифа»", engine: "Шу Пуэр"),
         Auto(name: "Мини Точа Гунтин Гун То", engine: "Шу Пуэр"),
          Auto(name: "Золотой Биндао", engine: "Шэн Пуэр"),
          Auto(name: "Да Шу Ча Ван «‎Четыре Иероглифа»", engine: "Шу Пуэр")
        ]
        */
        return teas
    }
}
