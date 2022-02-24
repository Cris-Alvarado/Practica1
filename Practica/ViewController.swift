//
//  ViewController.swift
//  Practica
//
//  Created by mac19 on 16/02/22.
//

import UIKit

class ViewController: UIViewController {
    
   

    @IBOutlet weak var nombreTF: UITextField!
    @IBOutlet weak var edadTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //usuario.image = UIImage(systemName: "perso")
        
        
        //usuarioIV.image = UIImage(named: "menor18")
        // Do any additional setup after loading the view.
    }
    //convertir o castear String-Int-string
     var edadInt = Int("18")
    var edadTexto = String(18)

    
    @IBAction func enviarBTN(_ sender: UIButton) {
        
        performSegue(withIdentifier: "enviarTexto",  sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enviarTexto"  {
            let objDestino = segue.destination as! SegundoViewController
            objDestino.recibirNombre = nombreTF.text
            objDestino.recibirEdad = edadTF.text
            
        }
        
    }
}

