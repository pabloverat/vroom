//
//  ViewControllerAddCar.swift
//  GoodVroom
//
//  Created by user223248 on 9/25/22.
//

import UIKit

class ViewControllerAddCar: UIViewController {

    @IBOutlet weak var modeloTF: UITextField!
    @IBOutlet weak var marcaTF: UITextField!
    @IBOutlet weak var anoTF: UITextField!
    @IBOutlet weak var serieTF: UITextField!
    @IBOutlet weak var BlueView: UIView!
    
    var sourceVC : ViewControllerHomeViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BlueView.layer.cornerRadius = 5
        BlueView.clipsToBounds = true

        // Do any additional setup after loading the view.
    }
    
    @IBAction func newCar(_ sender: UIButton) {
        
        if let modelo = modeloTF.text,
           let marca = marcaTF.text,
           let ano = Int(anoTF.text!),
           let serie = serieTF.text{
            
            
            let homeView = sourceVC!
            homeView.addToTable(modelo: modelo, marca: marca, ano: ano, serie: serie)
            
            dismiss(animated: true)
            
        }
        
        
        
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
