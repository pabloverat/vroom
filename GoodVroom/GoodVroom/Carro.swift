//
//  Carro.swift
//  GoodVroom
//
//  Created by user223248 on 9/25/22.
//

import UIKit

class Carro: NSObject {

    var modelo : String = ""
    var marca : String = ""
    var año : Int = 0
    var serie : String = ""
    
    init(modelo: String, marca: String, año: Int, serie: String) {
        self.modelo = modelo
        self.marca = marca
        self.año = año
        self.serie = serie
    }
    
}
