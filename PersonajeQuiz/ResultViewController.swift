//
//  ResultViewController.swift
//  PersonajeQuiz
//
//  Created by Francisco Jean on 10/09/25.
//

import UIKit

class ResultViewController: UIViewController {

    var winner: String?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "Resultado"
        print("Resultado recibido: \(winner ?? "Ninguno")")
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
