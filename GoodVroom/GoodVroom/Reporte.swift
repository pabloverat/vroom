//
//  Reporte.swift
//  GoodVroom
//
//  Created by user223248 on 9/25/22.
//

import UIKit

class Reporte: NSObject {

    var idReporte : Int = 0
    var numSerie : String = ""
    var fechaCreacion : String = ""
    var x : String = ""
    var y : String = ""
    var z : String = ""
    
    init(idReporte: Int, fechaCreacion: String, x: String, y: String, z: String) {
        self.idReporte = idReporte
        self.fechaCreacion = fechaCreacion
        self.x = x
        self.y = y
        self.z = z
    }
}
