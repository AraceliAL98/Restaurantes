//
//  DeetalleRestauranteController.swift
//  Restaurantes
//
//  Created by Alumno on 9/27/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class DetalleRestauranteController : UIViewController
{
    var restaurante : Restaurante?
    
    
    @IBOutlet weak var lblDireccion: UILabel!
    
    @IBOutlet weak var lblTelefono: UILabel!
    
    @IBOutlet weak var lblDescripcion: UILabel!
    
    override func viewDidLoad()
    {
        self.title = restaurante!.nombre
        
        lblDescripcion.text = "\(restaurante!.descripcion!)"
        
        lblDireccion.text = "\(restaurante!.direccion!)"
        
        lblTelefono.text = "\(restaurante!.telefono!)"
        
    }
    
}
