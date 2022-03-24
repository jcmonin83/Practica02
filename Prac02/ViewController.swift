//
//  ViewController.swift
//  Prac02
//
//  Created by Pepe on 23/03/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var txtFrase: UITextField!
    @IBOutlet weak var btnHabilitar: UIButton!
    @IBOutlet weak var btnAdjuntar: UIButton!
    @IBOutlet weak var txtvFrase: UITextView!
    @IBOutlet weak var swCambio: UISwitch!
    @IBOutlet weak var imgVFoto: UIImageView!
    @IBOutlet weak var slideOpacidad: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblTitulo.font = UIFont(name: "Caveman", size: 18)
        //btnHabilitar.setTitle("Deshabilitar", for: .normal)
        //btnHabilitar.titleLabel!.font =  UIFont(name: "System", size: 08) //fontSize =
        txtvFrase.text = "En algùn lugar de la mancha"
        imgVFoto.image = UIImage(named: "Angel")
        slideOpacidad.value = slideOpacidad.maximumValue
        imgVFoto.alpha = CGFloat(slideOpacidad.value)
    }
    
    @IBAction func btnHabilitarClick(_ sender: UIButton,forEvent event: UIEvent){
        
        txtFrase.isEnabled = !txtFrase.isEnabled
        txtvFrase.isUserInteractionEnabled = !txtvFrase.isUserInteractionEnabled
        btnAdjuntar.isEnabled = !btnAdjuntar.isEnabled
        swCambio.isEnabled = !swCambio.isEnabled
        imgVFoto.isUserInteractionEnabled = !imgVFoto.isUserInteractionEnabled
        slideOpacidad.isEnabled = !slideOpacidad.isEnabled
        btnHabilitar.setImage(UIImage(named: txtFrase.isEnabled ? "lock.open.fill" : "lock.fill"), for: .normal)
        //btnHabilitar.setTitle( (txtFrase.isEnabled ? "Deshabilitar" : "Habilitar"), for: .normal)
        //btnHabilitar.titleLabel?.font =  UIFont(name: "System", size: 08)
        
    }

    @IBAction func btnAdjuntarClick(_ sender: UIButton,forEvent event:UIEvent){
        if !(txtFrase.text!.isEmpty) && (txtFrase.text!.count > 0){
            txtvFrase.text += "\n" + txtFrase.text!
        }
    }
    
    @IBAction func swCambioChanged(_ sender:UISwitch){
            imgVFoto.image =  UIImage(named: (sender as UISwitch).isOn ? "Angel":"Diablo")
    }
    
    @IBAction func slideOpacidadChange(_ sender: UISlider, forEvent event: UIEvent){
        imgVFoto.alpha = CGFloat(sender.value)
    }
}

