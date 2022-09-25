//
//  ViewControllerReporte.swift
//  GoodVroom
//
//  Created by user223248 on 9/25/22.
//

import UIKit

class ViewControllerReporte: UIViewController {

    @IBOutlet weak var idReportTxt: UITextField!
    @IBOutlet weak var serieTxt: UITextField!
    @IBOutlet weak var fechaRepTxt: UITextField!
    
    @IBOutlet weak var estado: UIProgressView!
    @IBOutlet weak var rndID: UILabel!
    
    var unCarro : Carro!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        serieTxt.text = unCarro.serie
        rndID.text = String(Int.random(in: 1...10000))
        estado.progress = Float.random(in: 0...1)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
