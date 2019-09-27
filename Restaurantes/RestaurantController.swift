//
//  RestaurantController.swift
//  Restaurantes
//
//  Created by Alumno on 9/25/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class RestauranteController : UIViewController, UITableViewDataSource, UITableViewDelegate
{
    var restaurantes : [Restaurante] = []
    
    override func viewDidLoad()
    {
        restaurantes.append(Restaurante(nombre: "Restaurante 1", direccion: "Calle A", telefono: "1234567891", descripcion: "Restaurante Mexicano de la calle A"))
        restaurantes.append(Restaurante(nombre: "Restaurante 2", direccion: "Calle B", telefono: "7895616848", descripcion: "Restaurante Tailandes de la calle B"))
        restaurantes.append(Restaurante(nombre: "Restaurante 3", direccion: "Calle C", telefono: "6497249454", descripcion: "Restaurante Chino de la calle C"))
        restaurantes.append(Restaurante(nombre: "Restaurante 4", direccion: "Calle D", telefono: "8496548848", descripcion: "Restaurante Japones de la calle D"))
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return restaurantes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
     let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaRestaurante")
        celda?.textLabel?.text = restaurantes[indexPath.row].nombre
        return celda!
    }
    
    @IBOutlet weak var TVrestaurantes: UITableView!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "GoToDetalleRestaurante"
        {
            let destino = segue.destination as? DetalleRestauranteController
            destino?.restaurante = restaurantes[TVrestaurantes.indexPathForSelectedRow!.row]
            
            
        }
    }
    
    
    
    
}
