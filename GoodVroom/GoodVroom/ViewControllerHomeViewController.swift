//
//  ViewControllerHomeViewController.swift
//  GoodVroom
//
//  Created by user223248 on 9/25/22.
//

import UIKit

class ViewControllerHomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var CarrosTable: UITableView!
    
    var listaCarros = [
        Carro(modelo: "Civic", marca : "Honda", año: 2010, serie: "1234ABC"),
        Carro(modelo: "Forte", marca: "Kia", año: 2016, serie: "4321"),
        Carro(modelo: "Versa", marca: "Nissan", año: 2017, serie: "JA2143")
        
    ]
    
    func addToTable(modelo: String, marca: String, ano: Int, serie:String){
        listaCarros.append(Carro(modelo: modelo, marca: marca, año: ano, serie: serie))
        CarrosTable.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // Métodos de data source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaCarros.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda") as! CarsTableViewCell
        cell.myLabel.text = listaCarros[indexPath.row].marca + listaCarros[indexPath.row].modelo
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 78.0;//Choose your custom row height
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let detailView = segue.destination as? ViewControllerReporte{
            let indice = CarrosTable.indexPathForSelectedRow!
            detailView.unCarro = listaCarros[indice.row]
        }
        if let detailView = segue.destination as? ViewControllerAddCar{
            detailView.sourceVC = self
        }
        
    }


}
