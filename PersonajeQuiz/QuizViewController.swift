//
//  QuizViewController.swift
//  PersonajeQuiz
//
//  Created by Francisco Jean on 10/09/25.
//

import UIKit

class QuizViewController: UIViewController {
    
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBAction func optionTapped(_ sender: UIButton) {
        print("Opción seleccionada: \(sender.title(for: .normal) ?? "Sin título")")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
