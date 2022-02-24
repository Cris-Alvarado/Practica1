//
//  SegundoViewController.swift
//  Practica
//
//  Created by mac19 on 16/02/22.
//

import UIKit

class SegundoViewController: UIViewController {
    
    var recibirNombre: String?  //? Especifica que la var es opcional
    var recibirEdad: String?
    

    @IBOutlet weak var imagenValidacionIV: UIImageView!
    
    @IBOutlet weak var nombreUsuarioLb1: UILabel!
    
    // Siempre se ejecuta al inicio de la pantalla
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(recibirNombre ?? "Sin nombre")
        print(recibirNombre!)
        
        let edadInt = Int(recibirEdad!) ?? 0
        
        if edadInt >= 18 {
            print("Mayor de Edad")
            
        }else{
            print("Menor de edad, Prohibido el paso")
            
        }
        
        // Validar si la edad >igual18
        
        self.view.backgroundColor = UIColor.cyan
        
        //modifica el texto del label nombre UusuarioLb1
        nombreUsuarioLb1.text = recibirNombre

        
    }
    
    
    @IBAction func regresarBtn(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func salirBtn(_ sender: UIButton) {
        exit(0)
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
